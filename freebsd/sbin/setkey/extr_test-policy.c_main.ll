; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/setkey/extr_test-policy.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/setkey/extr_test-policy.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@requests = common dso_local global i8** null, align 8
@.str = private unnamed_addr constant [17 x i8] c"* requests:[%s]\0A\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"\09setlen:%d\0A\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"\09PF_INET:\0A\00", align 1
@PF_INET = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [12 x i8] c"\09PF_INET6:\0A\00", align 1
@PF_INET6 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  store i32 0, i32* %1, align 4
  store i32 0, i32* %2, align 4
  br label %4

4:                                                ; preds = %38, %0
  %5 = load i32, i32* %2, align 4
  %6 = load i8**, i8*** @requests, align 8
  %7 = call i32 @nitems(i8** %6)
  %8 = icmp slt i32 %5, %7
  br i1 %8, label %9, label %41

9:                                                ; preds = %4
  %10 = load i8**, i8*** @requests, align 8
  %11 = load i32, i32* %2, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds i8*, i8** %10, i64 %12
  %14 = load i8*, i8** %13, align 8
  %15 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i8* %14)
  %16 = load i8**, i8*** @requests, align 8
  %17 = load i32, i32* %2, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i8*, i8** %16, i64 %18
  %20 = load i8*, i8** %19, align 8
  %21 = call i8* @setpolicy(i8* %20)
  store i8* %21, i8** %3, align 8
  %22 = icmp eq i8* %21, null
  br i1 %22, label %23, label %24

23:                                               ; preds = %9
  br label %38

24:                                               ; preds = %9
  %25 = load i8*, i8** %3, align 8
  %26 = call i32 @PFKEY_EXTLEN(i8* %25)
  %27 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 %26)
  %28 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  %29 = load i8*, i8** %3, align 8
  %30 = load i32, i32* @PF_INET, align 4
  %31 = call i32 @test(i8* %29, i32 %30)
  %32 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0))
  %33 = load i8*, i8** %3, align 8
  %34 = load i32, i32* @PF_INET6, align 4
  %35 = call i32 @test(i8* %33, i32 %34)
  %36 = load i8*, i8** %3, align 8
  %37 = call i32 @free(i8* %36)
  br label %38

38:                                               ; preds = %24, %23
  %39 = load i32, i32* %2, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %2, align 4
  br label %4

41:                                               ; preds = %4
  %42 = load i32, i32* %1, align 4
  ret i32 %42
}

declare dso_local i32 @nitems(i8**) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i8* @setpolicy(i8*) #1

declare dso_local i32 @PFKEY_EXTLEN(i8*) #1

declare dso_local i32 @test(i8*, i32) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
