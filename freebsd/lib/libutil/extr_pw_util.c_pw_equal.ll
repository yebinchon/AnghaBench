; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libutil/extr_pw_util.c_pw_equal.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libutil/extr_pw_util.c_pw_equal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.passwd = type { i64, i64, i64, i64, i32, i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pw_equal(%struct.passwd* %0, %struct.passwd* %1) #0 {
  %3 = alloca %struct.passwd*, align 8
  %4 = alloca %struct.passwd*, align 8
  store %struct.passwd* %0, %struct.passwd** %3, align 8
  store %struct.passwd* %1, %struct.passwd** %4, align 8
  %5 = load %struct.passwd*, %struct.passwd** %3, align 8
  %6 = getelementptr inbounds %struct.passwd, %struct.passwd* %5, i32 0, i32 8
  %7 = load i32, i32* %6, align 8
  %8 = load %struct.passwd*, %struct.passwd** %4, align 8
  %9 = getelementptr inbounds %struct.passwd, %struct.passwd* %8, i32 0, i32 8
  %10 = load i32, i32* %9, align 8
  %11 = call i64 @strcmp(i32 %7, i32 %10)
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %13, label %81

13:                                               ; preds = %2
  %14 = load %struct.passwd*, %struct.passwd** %3, align 8
  %15 = getelementptr inbounds %struct.passwd, %struct.passwd* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load %struct.passwd*, %struct.passwd** %4, align 8
  %18 = getelementptr inbounds %struct.passwd, %struct.passwd* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp eq i64 %16, %19
  br i1 %20, label %21, label %81

21:                                               ; preds = %13
  %22 = load %struct.passwd*, %struct.passwd** %3, align 8
  %23 = getelementptr inbounds %struct.passwd, %struct.passwd* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.passwd*, %struct.passwd** %4, align 8
  %26 = getelementptr inbounds %struct.passwd, %struct.passwd* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = icmp eq i64 %24, %27
  br i1 %28, label %29, label %81

29:                                               ; preds = %21
  %30 = load %struct.passwd*, %struct.passwd** %3, align 8
  %31 = getelementptr inbounds %struct.passwd, %struct.passwd* %30, i32 0, i32 7
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.passwd*, %struct.passwd** %4, align 8
  %34 = getelementptr inbounds %struct.passwd, %struct.passwd* %33, i32 0, i32 7
  %35 = load i32, i32* %34, align 4
  %36 = call i64 @strcmp(i32 %32, i32 %35)
  %37 = icmp eq i64 %36, 0
  br i1 %37, label %38, label %81

38:                                               ; preds = %29
  %39 = load %struct.passwd*, %struct.passwd** %3, align 8
  %40 = getelementptr inbounds %struct.passwd, %struct.passwd* %39, i32 0, i32 2
  %41 = load i64, i64* %40, align 8
  %42 = load %struct.passwd*, %struct.passwd** %4, align 8
  %43 = getelementptr inbounds %struct.passwd, %struct.passwd* %42, i32 0, i32 2
  %44 = load i64, i64* %43, align 8
  %45 = icmp eq i64 %41, %44
  br i1 %45, label %46, label %81

46:                                               ; preds = %38
  %47 = load %struct.passwd*, %struct.passwd** %3, align 8
  %48 = getelementptr inbounds %struct.passwd, %struct.passwd* %47, i32 0, i32 3
  %49 = load i64, i64* %48, align 8
  %50 = load %struct.passwd*, %struct.passwd** %4, align 8
  %51 = getelementptr inbounds %struct.passwd, %struct.passwd* %50, i32 0, i32 3
  %52 = load i64, i64* %51, align 8
  %53 = icmp eq i64 %49, %52
  br i1 %53, label %54, label %81

54:                                               ; preds = %46
  %55 = load %struct.passwd*, %struct.passwd** %3, align 8
  %56 = getelementptr inbounds %struct.passwd, %struct.passwd* %55, i32 0, i32 6
  %57 = load i32, i32* %56, align 8
  %58 = load %struct.passwd*, %struct.passwd** %4, align 8
  %59 = getelementptr inbounds %struct.passwd, %struct.passwd* %58, i32 0, i32 6
  %60 = load i32, i32* %59, align 8
  %61 = call i64 @strcmp(i32 %57, i32 %60)
  %62 = icmp eq i64 %61, 0
  br i1 %62, label %63, label %81

63:                                               ; preds = %54
  %64 = load %struct.passwd*, %struct.passwd** %3, align 8
  %65 = getelementptr inbounds %struct.passwd, %struct.passwd* %64, i32 0, i32 5
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.passwd*, %struct.passwd** %4, align 8
  %68 = getelementptr inbounds %struct.passwd, %struct.passwd* %67, i32 0, i32 5
  %69 = load i32, i32* %68, align 4
  %70 = call i64 @strcmp(i32 %66, i32 %69)
  %71 = icmp eq i64 %70, 0
  br i1 %71, label %72, label %81

72:                                               ; preds = %63
  %73 = load %struct.passwd*, %struct.passwd** %3, align 8
  %74 = getelementptr inbounds %struct.passwd, %struct.passwd* %73, i32 0, i32 4
  %75 = load i32, i32* %74, align 8
  %76 = load %struct.passwd*, %struct.passwd** %4, align 8
  %77 = getelementptr inbounds %struct.passwd, %struct.passwd* %76, i32 0, i32 4
  %78 = load i32, i32* %77, align 8
  %79 = call i64 @strcmp(i32 %75, i32 %78)
  %80 = icmp eq i64 %79, 0
  br label %81

81:                                               ; preds = %72, %63, %54, %46, %38, %29, %21, %13, %2
  %82 = phi i1 [ false, %63 ], [ false, %54 ], [ false, %46 ], [ false, %38 ], [ false, %29 ], [ false, %21 ], [ false, %13 ], [ false, %2 ], [ %80, %72 ]
  %83 = zext i1 %82 to i32
  ret i32 %83
}

declare dso_local i64 @strcmp(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
