; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/sendmail/src/extr_readcf.c_printrules.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/sendmail/src/extr_readcf.c_printrules.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rewrite = type { i32, i32, %struct.rewrite* }

@RewriteRules = common dso_local global %struct.rewrite** null, align 8
@.str = private unnamed_addr constant [18 x i8] c"\0A----Rule Set %d:\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"\0ALHS:\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"RHS:\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printrules() #0 {
  %1 = alloca %struct.rewrite*, align 8
  %2 = alloca i32, align 4
  store i32 0, i32* %2, align 4
  br label %3

3:                                                ; preds = %43, %0
  %4 = load i32, i32* %2, align 4
  %5 = icmp slt i32 %4, 10
  br i1 %5, label %6, label %46

6:                                                ; preds = %3
  %7 = load %struct.rewrite**, %struct.rewrite*** @RewriteRules, align 8
  %8 = load i32, i32* %2, align 4
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds %struct.rewrite*, %struct.rewrite** %7, i64 %9
  %11 = load %struct.rewrite*, %struct.rewrite** %10, align 8
  %12 = icmp eq %struct.rewrite* %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %6
  br label %43

14:                                               ; preds = %6
  %15 = load i32, i32* %2, align 4
  %16 = call i32 (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %15)
  %17 = load %struct.rewrite**, %struct.rewrite*** @RewriteRules, align 8
  %18 = load i32, i32* %2, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.rewrite*, %struct.rewrite** %17, i64 %19
  %21 = load %struct.rewrite*, %struct.rewrite** %20, align 8
  store %struct.rewrite* %21, %struct.rewrite** %1, align 8
  br label %22

22:                                               ; preds = %38, %14
  %23 = load %struct.rewrite*, %struct.rewrite** %1, align 8
  %24 = icmp ne %struct.rewrite* %23, null
  br i1 %24, label %25, label %42

25:                                               ; preds = %22
  %26 = call i32 (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %27 = call i32 (...) @sm_debug_file()
  %28 = load %struct.rewrite*, %struct.rewrite** %1, align 8
  %29 = getelementptr inbounds %struct.rewrite, %struct.rewrite* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @printav(i32 %27, i32 %30)
  %32 = call i32 (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %33 = call i32 (...) @sm_debug_file()
  %34 = load %struct.rewrite*, %struct.rewrite** %1, align 8
  %35 = getelementptr inbounds %struct.rewrite, %struct.rewrite* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @printav(i32 %33, i32 %36)
  br label %38

38:                                               ; preds = %25
  %39 = load %struct.rewrite*, %struct.rewrite** %1, align 8
  %40 = getelementptr inbounds %struct.rewrite, %struct.rewrite* %39, i32 0, i32 2
  %41 = load %struct.rewrite*, %struct.rewrite** %40, align 8
  store %struct.rewrite* %41, %struct.rewrite** %1, align 8
  br label %22

42:                                               ; preds = %22
  br label %43

43:                                               ; preds = %42, %13
  %44 = load i32, i32* %2, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %2, align 4
  br label %3

46:                                               ; preds = %3
  ret void
}

declare dso_local i32 @sm_dprintf(i8*, ...) #1

declare dso_local i32 @printav(i32, i32) #1

declare dso_local i32 @sm_debug_file(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
