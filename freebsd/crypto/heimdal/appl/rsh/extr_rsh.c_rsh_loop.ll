; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/appl/rsh/extr_rsh.c_rsh_loop.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/appl/rsh/extr_rsh.c_rsh_loop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FD_SETSIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"fd too large\00", align 1
@input = common dso_local global i64 0, align 8
@STDIN_FILENO = common dso_local global i32 0, align 4
@RSH_BUFSIZ = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@EINTR = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [7 x i8] c"select\00", align 1
@ivec_in = common dso_local global i32* null, align 8
@.str.2 = private unnamed_addr constant [5 x i8] c"read\00", align 1
@STDOUT_FILENO = common dso_local global i32 0, align 4
@STDERR_FILENO = common dso_local global i32 0, align 4
@SHUT_WR = common dso_local global i32 0, align 4
@ivec_out = common dso_local global i32* null, align 8
@AUTH_KRB5 = common dso_local global i64 0, align 8
@auth_method = common dso_local global i64 0, align 8
@protocol_version = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @rsh_loop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rsh_loop(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 1, i32* %7, align 4
  %13 = load i32, i32* %4, align 4
  %14 = load i32, i32* @FD_SETSIZE, align 4
  %15 = icmp sge i32 %13, %14
  br i1 %15, label %23, label %16

16:                                               ; preds = %2
  %17 = load i32, i32* %5, align 4
  %18 = icmp ne i32 %17, -1
  br i1 %18, label %19, label %25

19:                                               ; preds = %16
  %20 = load i32, i32* %5, align 4
  %21 = load i32, i32* @FD_SETSIZE, align 4
  %22 = icmp sge i32 %20, %21
  br i1 %22, label %23, label %25

23:                                               ; preds = %19, %2
  %24 = call i32 @errx(i32 1, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  br label %25

25:                                               ; preds = %23, %19, %16
  %26 = call i32 @FD_ZERO(i32* %6)
  %27 = load i32, i32* %4, align 4
  %28 = call i32 @FD_SET(i32 %27, i32* %6)
  %29 = load i32, i32* %5, align 4
  %30 = icmp ne i32 %29, -1
  br i1 %30, label %31, label %36

31:                                               ; preds = %25
  %32 = load i32, i32* %5, align 4
  %33 = call i32 @FD_SET(i32 %32, i32* %6)
  %34 = load i32, i32* %7, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %7, align 4
  br label %36

36:                                               ; preds = %31, %25
  %37 = load i64, i64* @input, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %36
  %40 = load i32, i32* @STDIN_FILENO, align 4
  %41 = call i32 @FD_SET(i32 %40, i32* %6)
  br label %42

42:                                               ; preds = %39, %36
  br label %43

43:                                               ; preds = %171, %168, %42
  %44 = load i32, i32* @RSH_BUFSIZ, align 4
  %45 = zext i32 %44 to i64
  %46 = call i8* @llvm.stacksave()
  store i8* %46, i8** %10, align 8
  %47 = alloca i8, i64 %45, align 16
  store i64 %45, i64* %11, align 8
  %48 = load i32, i32* %6, align 4
  store i32 %48, i32* %9, align 4
  %49 = load i32, i32* %4, align 4
  %50 = load i32, i32* %5, align 4
  %51 = call i64 @max(i32 %49, i32 %50)
  %52 = add nsw i64 %51, 1
  %53 = call i32 @select(i64 %52, i32* %9, i32* null, i32* null, i32* null)
  store i32 %53, i32* %8, align 4
  %54 = load i32, i32* %8, align 4
  %55 = icmp slt i32 %54, 0
  br i1 %55, label %56, label %64

56:                                               ; preds = %43
  %57 = load i64, i64* @errno, align 8
  %58 = load i64, i64* @EINTR, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %60, label %61

60:                                               ; preds = %56
  store i32 3, i32* %12, align 4
  br label %168

61:                                               ; preds = %56
  %62 = call i32 @err(i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  br label %63

63:                                               ; preds = %61
  br label %64

64:                                               ; preds = %63, %43
  %65 = load i32, i32* %4, align 4
  %66 = call i64 @FD_ISSET(i32 %65, i32* %9)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %98

68:                                               ; preds = %64
  %69 = load i32, i32* %4, align 4
  %70 = trunc i64 %45 to i32
  %71 = load i32*, i32** @ivec_in, align 8
  %72 = getelementptr inbounds i32, i32* %71, i64 0
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @do_read(i32 %69, i8* %47, i32 %70, i32 %73)
  store i32 %74, i32* %8, align 4
  %75 = load i32, i32* %8, align 4
  %76 = icmp slt i32 %75, 0
  br i1 %76, label %77, label %79

77:                                               ; preds = %68
  %78 = call i32 @err(i32 1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  br label %97

79:                                               ; preds = %68
  %80 = load i32, i32* %8, align 4
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %82, label %92

82:                                               ; preds = %79
  %83 = load i32, i32* %4, align 4
  %84 = call i32 @close(i32 %83)
  %85 = load i32, i32* %4, align 4
  %86 = call i32 @FD_CLR(i32 %85, i32* %6)
  %87 = load i32, i32* %7, align 4
  %88 = add nsw i32 %87, -1
  store i32 %88, i32* %7, align 4
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %82
  store i32 0, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %168

91:                                               ; preds = %82
  br label %96

92:                                               ; preds = %79
  %93 = load i32, i32* @STDOUT_FILENO, align 4
  %94 = load i32, i32* %8, align 4
  %95 = call i32 @net_write(i32 %93, i8* %47, i32 %94)
  br label %96

96:                                               ; preds = %92, %91
  br label %97

97:                                               ; preds = %96, %77
  br label %98

98:                                               ; preds = %97, %64
  %99 = load i32, i32* %5, align 4
  %100 = icmp ne i32 %99, -1
  br i1 %100, label %101, label %135

101:                                              ; preds = %98
  %102 = load i32, i32* %5, align 4
  %103 = call i64 @FD_ISSET(i32 %102, i32* %9)
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %135

105:                                              ; preds = %101
  %106 = load i32, i32* %5, align 4
  %107 = trunc i64 %45 to i32
  %108 = load i32*, i32** @ivec_in, align 8
  %109 = getelementptr inbounds i32, i32* %108, i64 1
  %110 = load i32, i32* %109, align 4
  %111 = call i32 @do_read(i32 %106, i8* %47, i32 %107, i32 %110)
  store i32 %111, i32* %8, align 4
  %112 = load i32, i32* %8, align 4
  %113 = icmp slt i32 %112, 0
  br i1 %113, label %114, label %116

114:                                              ; preds = %105
  %115 = call i32 @err(i32 1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  br label %134

116:                                              ; preds = %105
  %117 = load i32, i32* %8, align 4
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %119, label %129

119:                                              ; preds = %116
  %120 = load i32, i32* %5, align 4
  %121 = call i32 @close(i32 %120)
  %122 = load i32, i32* %5, align 4
  %123 = call i32 @FD_CLR(i32 %122, i32* %6)
  %124 = load i32, i32* %7, align 4
  %125 = add nsw i32 %124, -1
  store i32 %125, i32* %7, align 4
  %126 = icmp eq i32 %125, 0
  br i1 %126, label %127, label %128

127:                                              ; preds = %119
  store i32 0, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %168

128:                                              ; preds = %119
  br label %133

129:                                              ; preds = %116
  %130 = load i32, i32* @STDERR_FILENO, align 4
  %131 = load i32, i32* %8, align 4
  %132 = call i32 @net_write(i32 %130, i8* %47, i32 %131)
  br label %133

133:                                              ; preds = %129, %128
  br label %134

134:                                              ; preds = %133, %114
  br label %135

135:                                              ; preds = %134, %101, %98
  %136 = load i32, i32* @STDIN_FILENO, align 4
  %137 = call i64 @FD_ISSET(i32 %136, i32* %9)
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %139, label %167

139:                                              ; preds = %135
  %140 = load i32, i32* @STDIN_FILENO, align 4
  %141 = trunc i64 %45 to i32
  %142 = call i32 @read(i32 %140, i8* %47, i32 %141)
  store i32 %142, i32* %8, align 4
  %143 = load i32, i32* %8, align 4
  %144 = icmp slt i32 %143, 0
  br i1 %144, label %145, label %147

145:                                              ; preds = %139
  %146 = call i32 @err(i32 1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  br label %166

147:                                              ; preds = %139
  %148 = load i32, i32* %8, align 4
  %149 = icmp eq i32 %148, 0
  br i1 %149, label %150, label %158

150:                                              ; preds = %147
  %151 = load i32, i32* @STDIN_FILENO, align 4
  %152 = call i32 @close(i32 %151)
  %153 = load i32, i32* @STDIN_FILENO, align 4
  %154 = call i32 @FD_CLR(i32 %153, i32* %6)
  %155 = load i32, i32* %4, align 4
  %156 = load i32, i32* @SHUT_WR, align 4
  %157 = call i32 @shutdown(i32 %155, i32 %156)
  br label %165

158:                                              ; preds = %147
  %159 = load i32, i32* %4, align 4
  %160 = load i32, i32* %8, align 4
  %161 = load i32*, i32** @ivec_out, align 8
  %162 = getelementptr inbounds i32, i32* %161, i64 0
  %163 = load i32, i32* %162, align 4
  %164 = call i32 @do_write(i32 %159, i8* %47, i32 %160, i32 %163)
  br label %165

165:                                              ; preds = %158, %150
  br label %166

166:                                              ; preds = %165, %145
  br label %167

167:                                              ; preds = %166, %135
  store i32 0, i32* %12, align 4
  br label %168

168:                                              ; preds = %167, %127, %90, %60
  %169 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %169)
  %170 = load i32, i32* %12, align 4
  switch i32 %170, label %174 [
    i32 0, label %171
    i32 3, label %43
    i32 1, label %172
  ]

171:                                              ; preds = %168
  br label %43

172:                                              ; preds = %168
  %173 = load i32, i32* %3, align 4
  ret i32 %173

174:                                              ; preds = %168
  unreachable
}

declare dso_local i32 @errx(i32, i8*) #1

declare dso_local i32 @FD_ZERO(i32*) #1

declare dso_local i32 @FD_SET(i32, i32*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @select(i64, i32*, i32*, i32*, i32*) #1

declare dso_local i64 @max(i32, i32) #1

declare dso_local i32 @err(i32, i8*) #1

declare dso_local i64 @FD_ISSET(i32, i32*) #1

declare dso_local i32 @do_read(i32, i8*, i32, i32) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @FD_CLR(i32, i32*) #1

declare dso_local i32 @net_write(i32, i8*, i32) #1

declare dso_local i32 @read(i32, i8*, i32) #1

declare dso_local i32 @shutdown(i32, i32) #1

declare dso_local i32 @do_write(i32, i8*, i32, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
