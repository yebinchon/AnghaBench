; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_remote.c_read_frame.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_remote.c_read_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@remote_timeout = common dso_local global i32 0, align 4
@remote_debug = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"Timeout in mid-packet, retrying\0A\00", align 1
@gdb_stdlog = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [43 x i8] c"Saw new packet start in middle of old one\0A\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"Timeout in checksum, retrying\0A\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"Communication error in checksum\0A\00", align 1
@.str.4 = private unnamed_addr constant [44 x i8] c"Bad checksum, sentsum=0x%x, csum=0x%x, buf=\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.6 = private unnamed_addr constant [39 x i8] c"Repeat count %d too large for buffer: \00", align 1
@.str.7 = private unnamed_addr constant [25 x i8] c"Remote packet too long: \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i8*, i64)* @read_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @read_frame(i8* %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8, align 1
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8, align 1
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  store i8 0, i8* %6, align 1
  store i64 0, i64* %7, align 8
  br label %13

13:                                               ; preds = %2, %131, %160
  %14 = load i32, i32* @remote_timeout, align 4
  %15 = call i32 @readchar(i32 %14)
  store i32 %15, i32* %8, align 4
  %16 = load i32, i32* %8, align 4
  switch i32 %16, label %155 [
    i32 128, label %17
    i32 36, label %24
    i32 35, label %31
    i32 42, label %98
  ]

17:                                               ; preds = %13
  %18 = load i32, i32* @remote_debug, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %17
  %21 = load i32, i32* @gdb_stdlog, align 4
  %22 = call i32 @fputs_filtered(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %21)
  br label %23

23:                                               ; preds = %20, %17
  store i64 -1, i64* %3, align 8
  br label %180

24:                                               ; preds = %13
  %25 = load i32, i32* @remote_debug, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %24
  %28 = load i32, i32* @gdb_stdlog, align 4
  %29 = call i32 @fputs_filtered(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i32 %28)
  br label %30

30:                                               ; preds = %27, %24
  store i64 -1, i64* %3, align 8
  br label %180

31:                                               ; preds = %13
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %32 = load i8*, i8** %4, align 8
  %33 = load i64, i64* %7, align 8
  %34 = getelementptr inbounds i8, i8* %32, i64 %33
  store i8 0, i8* %34, align 1
  %35 = load i32, i32* @remote_timeout, align 4
  %36 = call i32 @readchar(i32 %35)
  store i32 %36, i32* %10, align 4
  %37 = load i32, i32* %10, align 4
  %38 = icmp sge i32 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %31
  %40 = load i32, i32* @remote_timeout, align 4
  %41 = call i32 @readchar(i32 %40)
  store i32 %41, i32* %11, align 4
  br label %42

42:                                               ; preds = %39, %31
  %43 = load i32, i32* %10, align 4
  %44 = icmp eq i32 %43, 128
  br i1 %44, label %48, label %45

45:                                               ; preds = %42
  %46 = load i32, i32* %11, align 4
  %47 = icmp eq i32 %46, 128
  br i1 %47, label %48, label %55

48:                                               ; preds = %45, %42
  %49 = load i32, i32* @remote_debug, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %48
  %52 = load i32, i32* @gdb_stdlog, align 4
  %53 = call i32 @fputs_filtered(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i32 %52)
  br label %54

54:                                               ; preds = %51, %48
  store i64 -1, i64* %3, align 8
  br label %180

55:                                               ; preds = %45
  %56 = load i32, i32* %10, align 4
  %57 = icmp slt i32 %56, 0
  br i1 %57, label %61, label %58

58:                                               ; preds = %55
  %59 = load i32, i32* %11, align 4
  %60 = icmp slt i32 %59, 0
  br i1 %60, label %61, label %68

61:                                               ; preds = %58, %55
  %62 = load i32, i32* @remote_debug, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %61
  %65 = load i32, i32* @gdb_stdlog, align 4
  %66 = call i32 @fputs_filtered(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0), i32 %65)
  br label %67

67:                                               ; preds = %64, %61
  store i64 -1, i64* %3, align 8
  br label %180

68:                                               ; preds = %58
  br label %69

69:                                               ; preds = %68
  %70 = load i32, i32* %10, align 4
  %71 = call i32 @fromhex(i32 %70)
  %72 = shl i32 %71, 4
  %73 = load i32, i32* %11, align 4
  %74 = call i32 @fromhex(i32 %73)
  %75 = or i32 %72, %74
  %76 = trunc i32 %75 to i8
  store i8 %76, i8* %9, align 1
  %77 = load i8, i8* %6, align 1
  %78 = zext i8 %77 to i32
  %79 = load i8, i8* %9, align 1
  %80 = zext i8 %79 to i32
  %81 = icmp eq i32 %78, %80
  br i1 %81, label %82, label %84

82:                                               ; preds = %69
  %83 = load i64, i64* %7, align 8
  store i64 %83, i64* %3, align 8
  br label %180

84:                                               ; preds = %69
  %85 = load i32, i32* @remote_debug, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %97

87:                                               ; preds = %84
  %88 = load i32, i32* @gdb_stdlog, align 4
  %89 = load i8, i8* %9, align 1
  %90 = load i8, i8* %6, align 1
  %91 = call i32 @fprintf_filtered(i32 %88, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.4, i64 0, i64 0), i8 zeroext %89, i8 zeroext %90)
  %92 = load i8*, i8** %4, align 8
  %93 = load i32, i32* @gdb_stdlog, align 4
  %94 = call i32 @fputs_filtered(i8* %92, i32 %93)
  %95 = load i32, i32* @gdb_stdlog, align 4
  %96 = call i32 @fputs_filtered(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0), i32 %95)
  br label %97

97:                                               ; preds = %87, %84
  store i64 -1, i64* %3, align 8
  br label %180

98:                                               ; preds = %13
  %99 = load i32, i32* %8, align 4
  %100 = load i8, i8* %6, align 1
  %101 = zext i8 %100 to i32
  %102 = add nsw i32 %101, %99
  %103 = trunc i32 %102 to i8
  store i8 %103, i8* %6, align 1
  %104 = load i32, i32* @remote_timeout, align 4
  %105 = call i32 @readchar(i32 %104)
  store i32 %105, i32* %8, align 4
  %106 = load i32, i32* %8, align 4
  %107 = load i8, i8* %6, align 1
  %108 = zext i8 %107 to i32
  %109 = add nsw i32 %108, %106
  %110 = trunc i32 %109 to i8
  store i8 %110, i8* %6, align 1
  %111 = load i32, i32* %8, align 4
  %112 = sub nsw i32 %111, 32
  %113 = add nsw i32 %112, 3
  store i32 %113, i32* %12, align 4
  %114 = load i32, i32* %12, align 4
  %115 = icmp sgt i32 %114, 0
  br i1 %115, label %116, label %146

116:                                              ; preds = %98
  %117 = load i32, i32* %12, align 4
  %118 = icmp sle i32 %117, 255
  br i1 %118, label %119, label %146

119:                                              ; preds = %116
  %120 = load i64, i64* %7, align 8
  %121 = icmp sgt i64 %120, 0
  br i1 %121, label %122, label %146

122:                                              ; preds = %119
  %123 = load i64, i64* %7, align 8
  %124 = load i32, i32* %12, align 4
  %125 = sext i32 %124 to i64
  %126 = add nsw i64 %123, %125
  %127 = sub nsw i64 %126, 1
  %128 = load i64, i64* %5, align 8
  %129 = sub nsw i64 %128, 1
  %130 = icmp slt i64 %127, %129
  br i1 %130, label %131, label %146

131:                                              ; preds = %122
  %132 = load i8*, i8** %4, align 8
  %133 = load i64, i64* %7, align 8
  %134 = getelementptr inbounds i8, i8* %132, i64 %133
  %135 = load i8*, i8** %4, align 8
  %136 = load i64, i64* %7, align 8
  %137 = sub nsw i64 %136, 1
  %138 = getelementptr inbounds i8, i8* %135, i64 %137
  %139 = load i8, i8* %138, align 1
  %140 = load i32, i32* %12, align 4
  %141 = call i32 @memset(i8* %134, i8 signext %139, i32 %140)
  %142 = load i32, i32* %12, align 4
  %143 = sext i32 %142 to i64
  %144 = load i64, i64* %7, align 8
  %145 = add nsw i64 %144, %143
  store i64 %145, i64* %7, align 8
  br label %13

146:                                              ; preds = %122, %119, %116, %98
  %147 = load i8*, i8** %4, align 8
  %148 = load i64, i64* %7, align 8
  %149 = getelementptr inbounds i8, i8* %147, i64 %148
  store i8 0, i8* %149, align 1
  %150 = load i32, i32* %12, align 4
  %151 = call i32 @printf_filtered(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.6, i64 0, i64 0), i32 %150)
  %152 = load i8*, i8** %4, align 8
  %153 = call i32 @puts_filtered(i8* %152)
  %154 = call i32 @puts_filtered(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  store i64 -1, i64* %3, align 8
  br label %180

155:                                              ; preds = %13
  %156 = load i64, i64* %7, align 8
  %157 = load i64, i64* %5, align 8
  %158 = sub nsw i64 %157, 1
  %159 = icmp slt i64 %156, %158
  br i1 %159, label %160, label %172

160:                                              ; preds = %155
  %161 = load i32, i32* %8, align 4
  %162 = trunc i32 %161 to i8
  %163 = load i8*, i8** %4, align 8
  %164 = load i64, i64* %7, align 8
  %165 = add nsw i64 %164, 1
  store i64 %165, i64* %7, align 8
  %166 = getelementptr inbounds i8, i8* %163, i64 %164
  store i8 %162, i8* %166, align 1
  %167 = load i32, i32* %8, align 4
  %168 = load i8, i8* %6, align 1
  %169 = zext i8 %168 to i32
  %170 = add nsw i32 %169, %167
  %171 = trunc i32 %170 to i8
  store i8 %171, i8* %6, align 1
  br label %13

172:                                              ; preds = %155
  %173 = load i8*, i8** %4, align 8
  %174 = load i64, i64* %7, align 8
  %175 = getelementptr inbounds i8, i8* %173, i64 %174
  store i8 0, i8* %175, align 1
  %176 = call i32 @puts_filtered(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.7, i64 0, i64 0))
  %177 = load i8*, i8** %4, align 8
  %178 = call i32 @puts_filtered(i8* %177)
  %179 = call i32 @puts_filtered(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  store i64 -1, i64* %3, align 8
  br label %180

180:                                              ; preds = %172, %146, %97, %82, %67, %54, %30, %23
  %181 = load i64, i64* %3, align 8
  ret i64 %181
}

declare dso_local i32 @readchar(i32) #1

declare dso_local i32 @fputs_filtered(i8*, i32) #1

declare dso_local i32 @fromhex(i32) #1

declare dso_local i32 @fprintf_filtered(i32, i8*, i8 zeroext, i8 zeroext) #1

declare dso_local i32 @memset(i8*, i8 signext, i32) #1

declare dso_local i32 @printf_filtered(i8*, i32) #1

declare dso_local i32 @puts_filtered(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
