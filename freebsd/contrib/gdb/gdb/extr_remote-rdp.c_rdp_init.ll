; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_remote-rdp.c_rdp_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_remote-rdp.c_rdp_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@RDP_OPEN_TYPE_COLD = common dso_local global i32 0, align 4
@RDP_OPEN_TYPE_WARM = common dso_local global i32 0, align 4
@QUIT = common dso_local global i32 0, align 4
@io = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Trying to connect at %d baud.\0A\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%c\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@RDP_OPEN = common dso_local global i32 0, align 4
@RDP_OPEN_TYPE_RETURN_SEX = common dso_local global i32 0, align 4
@remote_debug = common dso_local global i64 0, align 8
@gdb_stdlog = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [8 x i8] c"[%02x]\0A\00", align 1
@.str.4 = private unnamed_addr constant [53 x i8] c"\0AThe board has sent notification that it was reset.\0A\00", align 1
@.str.5 = private unnamed_addr constant [34 x i8] c"Waiting for it to settle down...\0A\00", align 1
@.str.6 = private unnamed_addr constant [16 x i8] c"\0ATrying again.\0A\00", align 1
@.str.7 = private unnamed_addr constant [56 x i8] c"Couldn't reset the board, try pressing the reset button\00", align 1
@BFD_ENDIAN_BIG = common dso_local global i32 0, align 4
@BFD_ENDIAN_LITTLE = common dso_local global i32 0, align 4
@target_byte_order = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32)* @rdp_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rdp_init(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %12 = load i32, i32* %3, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %2
  %15 = load i32, i32* @RDP_OPEN_TYPE_COLD, align 4
  br label %18

16:                                               ; preds = %2
  %17 = load i32, i32* @RDP_OPEN_TYPE_WARM, align 4
  br label %18

18:                                               ; preds = %16, %14
  %19 = phi i32 [ %15, %14 ], [ %17, %16 ]
  store i32 %19, i32* %6, align 4
  store i32 9600, i32* %7, align 4
  %20 = call i64 @time(i32 0)
  store i64 %20, i64* %8, align 8
  %21 = load i64, i64* %8, align 8
  %22 = add nsw i64 %21, 10
  store i64 %22, i64* %9, align 8
  br label %23

23:                                               ; preds = %153, %18
  %24 = call i64 @time(i32 0)
  %25 = load i64, i64* %9, align 8
  %26 = icmp slt i64 %24, %25
  br i1 %26, label %27, label %31

27:                                               ; preds = %23
  %28 = load i32, i32* %5, align 4
  %29 = icmp ne i32 %28, 0
  %30 = xor i1 %29, true
  br label %31

31:                                               ; preds = %27, %23
  %32 = phi i1 [ false, %23 ], [ %30, %27 ]
  br i1 %32, label %33, label %154

33:                                               ; preds = %31
  %34 = load i32, i32* @QUIT, align 4
  %35 = load i32, i32* @io, align 4
  %36 = call i32 @serial_flush_input(i32 %35)
  %37 = load i32, i32* @io, align 4
  %38 = call i32 @serial_flush_output(i32 %37)
  %39 = load i32, i32* %4, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %33
  %42 = load i32, i32* %7, align 4
  %43 = call i32 (i8*, ...) @printf_unfiltered(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %42)
  br label %44

44:                                               ; preds = %41, %33
  %45 = load i32, i32* %3, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %74

47:                                               ; preds = %44
  %48 = call i32 @put_byte(i32 132)
  br label %49

49:                                               ; preds = %67, %47
  %50 = load i32, i32* @io, align 4
  %51 = call i32 @serial_readchar(i32 %50, i32 1)
  store i32 %51, i32* %10, align 4
  %52 = icmp sgt i32 %51, 0
  br i1 %52, label %53, label %68

53:                                               ; preds = %49
  %54 = load i32, i32* %10, align 4
  switch i32 %54, label %57 [
    i32 128, label %55
    i32 132, label %56
  ]

55:                                               ; preds = %53
  br label %67

56:                                               ; preds = %53
  br label %67

57:                                               ; preds = %53
  %58 = load i32, i32* %10, align 4
  %59 = call i32 @isgraph(i32 %58) #3
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %57
  %62 = load i32, i32* %10, align 4
  br label %64

63:                                               ; preds = %57
  br label %64

64:                                               ; preds = %63, %61
  %65 = phi i32 [ %62, %61 ], [ 32, %63 ]
  %66 = call i32 (i8*, ...) @printf_unfiltered(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %65)
  br label %67

67:                                               ; preds = %64, %56, %55
  br label %49

68:                                               ; preds = %49
  %69 = load i32, i32* %10, align 4
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %68
  %72 = call i32 @printf_filtered(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  br label %73

73:                                               ; preds = %71, %68
  br label %74

74:                                               ; preds = %73, %44
  %75 = load i32, i32* @RDP_OPEN, align 4
  %76 = call i32 @put_byte(i32 %75)
  %77 = load i32, i32* %6, align 4
  %78 = load i32, i32* @RDP_OPEN_TYPE_RETURN_SEX, align 4
  %79 = or i32 %77, %78
  %80 = call i32 @put_byte(i32 %79)
  %81 = call i32 @put_word(i32 0)
  br label %82

82:                                               ; preds = %152, %74
  %83 = load i32, i32* %5, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %89, label %85

85:                                               ; preds = %82
  %86 = load i32, i32* @io, align 4
  %87 = call i32 @serial_readchar(i32 %86, i32 1)
  store i32 %87, i32* %10, align 4
  %88 = icmp sgt i32 %87, 0
  br label %89

89:                                               ; preds = %85, %82
  %90 = phi i1 [ false, %82 ], [ %88, %85 ]
  br i1 %90, label %91, label %153

91:                                               ; preds = %89
  %92 = load i64, i64* @remote_debug, align 8
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %98

94:                                               ; preds = %91
  %95 = load i32, i32* @gdb_stdlog, align 4
  %96 = load i32, i32* %10, align 4
  %97 = call i32 @fprintf_unfiltered(i32 %95, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i32 %96)
  br label %98

98:                                               ; preds = %94, %91
  %99 = load i32, i32* %10, align 4
  switch i32 %99, label %135 [
    i32 128, label %100
    i32 132, label %101
    i32 131, label %136
  ]

100:                                              ; preds = %98
  br label %152

101:                                              ; preds = %98
  br label %102

102:                                              ; preds = %106, %101
  %103 = load i32, i32* @io, align 4
  %104 = call i32 @serial_readchar(i32 %103, i32 1)
  store i32 %104, i32* %10, align 4
  %105 = icmp eq i32 %104, 132
  br i1 %105, label %106, label %107

106:                                              ; preds = %102
  br label %102

107:                                              ; preds = %102
  br label %108

108:                                              ; preds = %118, %107
  %109 = load i32, i32* %10, align 4
  %110 = call i32 @isgraph(i32 %109) #3
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %114

112:                                              ; preds = %108
  %113 = load i32, i32* %10, align 4
  br label %115

114:                                              ; preds = %108
  br label %115

115:                                              ; preds = %114, %112
  %116 = phi i32 [ %113, %112 ], [ 32, %114 ]
  %117 = call i32 (i8*, ...) @printf_unfiltered(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %116)
  br label %118

118:                                              ; preds = %115
  %119 = load i32, i32* @io, align 4
  %120 = call i32 @serial_readchar(i32 %119, i32 1)
  store i32 %120, i32* %10, align 4
  %121 = icmp sgt i32 %120, 0
  br i1 %121, label %108, label %122

122:                                              ; preds = %118
  %123 = load i32, i32* %4, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %128

125:                                              ; preds = %122
  %126 = call i32 (i8*, ...) @printf_unfiltered(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.4, i64 0, i64 0))
  %127 = call i32 (i8*, ...) @printf_unfiltered(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5, i64 0, i64 0))
  br label %128

128:                                              ; preds = %125, %122
  %129 = call i32 @sleep(i32 3)
  %130 = load i32, i32* %4, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %134

132:                                              ; preds = %128
  %133 = call i32 (i8*, ...) @printf_unfiltered(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i64 0, i64 0))
  br label %134

134:                                              ; preds = %132, %128
  store i32 0, i32* %3, align 4
  br label %152

135:                                              ; preds = %98
  br label %152

136:                                              ; preds = %98
  %137 = load i32, i32* @io, align 4
  %138 = call i32 @serial_readchar(i32 %137, i32 1)
  store i32 %138, i32* %11, align 4
  %139 = load i64, i64* @remote_debug, align 8
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %141, label %145

141:                                              ; preds = %136
  %142 = load i32, i32* @gdb_stdlog, align 4
  %143 = load i32, i32* %11, align 4
  %144 = call i32 @fprintf_unfiltered(i32 %142, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i32 %143)
  br label %145

145:                                              ; preds = %141, %136
  %146 = load i32, i32* %11, align 4
  switch i32 %146, label %150 [
    i32 128, label %147
    i32 129, label %148
    i32 130, label %149
  ]

147:                                              ; preds = %145
  br label %151

148:                                              ; preds = %145
  store i32 1, i32* %5, align 4
  br label %151

149:                                              ; preds = %145
  store i32 1, i32* %5, align 4
  br label %151

150:                                              ; preds = %145
  br label %151

151:                                              ; preds = %150, %149, %148, %147
  br label %152

152:                                              ; preds = %151, %135, %134, %100
  br label %82

153:                                              ; preds = %89
  br label %23

154:                                              ; preds = %31
  %155 = load i32, i32* %5, align 4
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %159, label %157

157:                                              ; preds = %154
  %158 = call i32 @error(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.7, i64 0, i64 0))
  br label %159

159:                                              ; preds = %157, %154
  ret void
}

declare dso_local i64 @time(i32) #1

declare dso_local i32 @serial_flush_input(i32) #1

declare dso_local i32 @serial_flush_output(i32) #1

declare dso_local i32 @printf_unfiltered(i8*, ...) #1

declare dso_local i32 @put_byte(i32) #1

declare dso_local i32 @serial_readchar(i32, i32) #1

; Function Attrs: nounwind readonly
declare dso_local i32 @isgraph(i32) #2

declare dso_local i32 @printf_filtered(i8*) #1

declare dso_local i32 @put_word(i32) #1

declare dso_local i32 @fprintf_unfiltered(i32, i8*, i32) #1

declare dso_local i32 @sleep(i32) #1

declare dso_local i32 @error(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
