; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/appl/rcp/extr_rcp.c_do_cmd.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/appl/rcp/extr_rcp.c_do_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [5 x i8] c"pipe\00", align 1
@RSH_PROGRAM = common dso_local global i8* null, align 8
@usekrb4 = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [3 x i8] c"-4\00", align 1
@usekrb5 = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [3 x i8] c"-5\00", align 1
@usebroken = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [3 x i8] c"-K\00", align 1
@doencrypt = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [3 x i8] c"-x\00", align 1
@forwardtkt = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [3 x i8] c"-F\00", align 1
@noencrypt = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [3 x i8] c"-z\00", align 1
@port = common dso_local global i8* null, align 8
@.str.7 = private unnamed_addr constant [3 x i8] c"-p\00", align 1
@eflag = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [3 x i8] c"-e\00", align 1
@.str.9 = private unnamed_addr constant [3 x i8] c"-l\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @do_cmd(i8* %0, i8* %1, i8* %2, i32* %3, i32* %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca [2 x i32], align 4
  %12 = alloca [2 x i32], align 4
  %13 = alloca [2 x i32], align 4
  %14 = alloca [100 x i8*], align 16
  %15 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32* %4, i32** %10, align 8
  %16 = getelementptr inbounds [2 x i32], [2 x i32]* %13, i64 0, i64 0
  %17 = call i64 @pipe(i32* %16)
  %18 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 0
  %19 = call i64 @pipe(i32* %18)
  %20 = icmp slt i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %5
  %22 = call i32 @perror(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %23 = call i32 @exit(i32 255) #3
  unreachable

24:                                               ; preds = %5
  %25 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 0
  %26 = call i64 @pipe(i32* %25)
  %27 = icmp slt i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %24
  %29 = call i32 @perror(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %30 = call i32 @exit(i32 255) #3
  unreachable

31:                                               ; preds = %24
  %32 = getelementptr inbounds [2 x i32], [2 x i32]* %13, i64 0, i64 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @close(i32 %33)
  %35 = getelementptr inbounds [2 x i32], [2 x i32]* %13, i64 0, i64 1
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @close(i32 %36)
  %38 = call i64 (...) @fork()
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %40, label %166

40:                                               ; preds = %31
  %41 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 1
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @close(i32 %42)
  %44 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @close(i32 %45)
  %47 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @dup2(i32 %48, i32 0)
  %50 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 1
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @dup2(i32 %51, i32 1)
  %53 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @close(i32 %54)
  %56 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 1
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @close(i32 %57)
  store i32 0, i32* %15, align 4
  %59 = load i8*, i8** @RSH_PROGRAM, align 8
  %60 = load i32, i32* %15, align 4
  %61 = add i32 %60, 1
  store i32 %61, i32* %15, align 4
  %62 = zext i32 %60 to i64
  %63 = getelementptr inbounds [100 x i8*], [100 x i8*]* %14, i64 0, i64 %62
  store i8* %59, i8** %63, align 8
  %64 = load i64, i64* @usekrb4, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %71

66:                                               ; preds = %40
  %67 = load i32, i32* %15, align 4
  %68 = add i32 %67, 1
  store i32 %68, i32* %15, align 4
  %69 = zext i32 %67 to i64
  %70 = getelementptr inbounds [100 x i8*], [100 x i8*]* %14, i64 0, i64 %69
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8** %70, align 8
  br label %71

71:                                               ; preds = %66, %40
  %72 = load i64, i64* @usekrb5, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %79

74:                                               ; preds = %71
  %75 = load i32, i32* %15, align 4
  %76 = add i32 %75, 1
  store i32 %76, i32* %15, align 4
  %77 = zext i32 %75 to i64
  %78 = getelementptr inbounds [100 x i8*], [100 x i8*]* %14, i64 0, i64 %77
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8** %78, align 8
  br label %79

79:                                               ; preds = %74, %71
  %80 = load i64, i64* @usebroken, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %87

82:                                               ; preds = %79
  %83 = load i32, i32* %15, align 4
  %84 = add i32 %83, 1
  store i32 %84, i32* %15, align 4
  %85 = zext i32 %83 to i64
  %86 = getelementptr inbounds [100 x i8*], [100 x i8*]* %14, i64 0, i64 %85
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8** %86, align 8
  br label %87

87:                                               ; preds = %82, %79
  %88 = load i64, i64* @doencrypt, align 8
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %95

90:                                               ; preds = %87
  %91 = load i32, i32* %15, align 4
  %92 = add i32 %91, 1
  store i32 %92, i32* %15, align 4
  %93 = zext i32 %91 to i64
  %94 = getelementptr inbounds [100 x i8*], [100 x i8*]* %14, i64 0, i64 %93
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i8** %94, align 8
  br label %95

95:                                               ; preds = %90, %87
  %96 = load i64, i64* @forwardtkt, align 8
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %103

98:                                               ; preds = %95
  %99 = load i32, i32* %15, align 4
  %100 = add i32 %99, 1
  store i32 %100, i32* %15, align 4
  %101 = zext i32 %99 to i64
  %102 = getelementptr inbounds [100 x i8*], [100 x i8*]* %14, i64 0, i64 %101
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i8** %102, align 8
  br label %103

103:                                              ; preds = %98, %95
  %104 = load i64, i64* @noencrypt, align 8
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %111

106:                                              ; preds = %103
  %107 = load i32, i32* %15, align 4
  %108 = add i32 %107, 1
  store i32 %108, i32* %15, align 4
  %109 = zext i32 %107 to i64
  %110 = getelementptr inbounds [100 x i8*], [100 x i8*]* %14, i64 0, i64 %109
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), i8** %110, align 8
  br label %111

111:                                              ; preds = %106, %103
  %112 = load i8*, i8** @port, align 8
  %113 = icmp ne i8* %112, null
  br i1 %113, label %114, label %124

114:                                              ; preds = %111
  %115 = load i32, i32* %15, align 4
  %116 = add i32 %115, 1
  store i32 %116, i32* %15, align 4
  %117 = zext i32 %115 to i64
  %118 = getelementptr inbounds [100 x i8*], [100 x i8*]* %14, i64 0, i64 %117
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0), i8** %118, align 8
  %119 = load i8*, i8** @port, align 8
  %120 = load i32, i32* %15, align 4
  %121 = add i32 %120, 1
  store i32 %121, i32* %15, align 4
  %122 = zext i32 %120 to i64
  %123 = getelementptr inbounds [100 x i8*], [100 x i8*]* %14, i64 0, i64 %122
  store i8* %119, i8** %123, align 8
  br label %124

124:                                              ; preds = %114, %111
  %125 = load i64, i64* @eflag, align 8
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %132

127:                                              ; preds = %124
  %128 = load i32, i32* %15, align 4
  %129 = add i32 %128, 1
  store i32 %129, i32* %15, align 4
  %130 = zext i32 %128 to i64
  %131 = getelementptr inbounds [100 x i8*], [100 x i8*]* %14, i64 0, i64 %130
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0), i8** %131, align 8
  br label %132

132:                                              ; preds = %127, %124
  %133 = load i8*, i8** %7, align 8
  %134 = icmp ne i8* %133, null
  br i1 %134, label %135, label %145

135:                                              ; preds = %132
  %136 = load i32, i32* %15, align 4
  %137 = add i32 %136, 1
  store i32 %137, i32* %15, align 4
  %138 = zext i32 %136 to i64
  %139 = getelementptr inbounds [100 x i8*], [100 x i8*]* %14, i64 0, i64 %138
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i64 0, i64 0), i8** %139, align 8
  %140 = load i8*, i8** %7, align 8
  %141 = load i32, i32* %15, align 4
  %142 = add i32 %141, 1
  store i32 %142, i32* %15, align 4
  %143 = zext i32 %141 to i64
  %144 = getelementptr inbounds [100 x i8*], [100 x i8*]* %14, i64 0, i64 %143
  store i8* %140, i8** %144, align 8
  br label %145

145:                                              ; preds = %135, %132
  %146 = load i8*, i8** %6, align 8
  %147 = load i32, i32* %15, align 4
  %148 = add i32 %147, 1
  store i32 %148, i32* %15, align 4
  %149 = zext i32 %147 to i64
  %150 = getelementptr inbounds [100 x i8*], [100 x i8*]* %14, i64 0, i64 %149
  store i8* %146, i8** %150, align 8
  %151 = load i8*, i8** %8, align 8
  %152 = load i32, i32* %15, align 4
  %153 = add i32 %152, 1
  store i32 %153, i32* %15, align 4
  %154 = zext i32 %152 to i64
  %155 = getelementptr inbounds [100 x i8*], [100 x i8*]* %14, i64 0, i64 %154
  store i8* %151, i8** %155, align 8
  %156 = load i32, i32* %15, align 4
  %157 = add i32 %156, 1
  store i32 %157, i32* %15, align 4
  %158 = zext i32 %156 to i64
  %159 = getelementptr inbounds [100 x i8*], [100 x i8*]* %14, i64 0, i64 %158
  store i8* null, i8** %159, align 8
  %160 = load i8*, i8** @RSH_PROGRAM, align 8
  %161 = getelementptr inbounds [100 x i8*], [100 x i8*]* %14, i64 0, i64 0
  %162 = call i32 @execvp(i8* %160, i8** %161)
  %163 = load i8*, i8** @RSH_PROGRAM, align 8
  %164 = call i32 @perror(i8* %163)
  %165 = call i32 @exit(i32 1) #3
  unreachable

166:                                              ; preds = %31
  %167 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 0
  %168 = load i32, i32* %167, align 4
  %169 = call i32 @close(i32 %168)
  %170 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 1
  %171 = load i32, i32* %170, align 4
  %172 = load i32*, i32** %10, align 8
  store i32 %171, i32* %172, align 4
  %173 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 1
  %174 = load i32, i32* %173, align 4
  %175 = call i32 @close(i32 %174)
  %176 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 0
  %177 = load i32, i32* %176, align 4
  %178 = load i32*, i32** %9, align 8
  store i32 %177, i32* %178, align 4
  ret i32 0
}

declare dso_local i64 @pipe(i32*) #1

declare dso_local i32 @perror(i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @close(i32) #1

declare dso_local i64 @fork(...) #1

declare dso_local i32 @dup2(i32, i32) #1

declare dso_local i32 @execvp(i8*, i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
