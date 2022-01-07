; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/openbsd-compat/extr_getrrsetbyname.c_freerrset.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/openbsd-compat/extr_getrrsetbyname.c_freerrset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rrsetinfo = type { i64, i64, %struct.rrsetinfo*, %struct.rrsetinfo*, %struct.rrsetinfo*, %struct.rrsetinfo* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @freerrset(%struct.rrsetinfo* %0) #0 {
  %2 = alloca %struct.rrsetinfo*, align 8
  %3 = alloca i64, align 8
  store %struct.rrsetinfo* %0, %struct.rrsetinfo** %2, align 8
  %4 = load %struct.rrsetinfo*, %struct.rrsetinfo** %2, align 8
  %5 = icmp eq %struct.rrsetinfo* %4, null
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  br label %98

7:                                                ; preds = %1
  %8 = load %struct.rrsetinfo*, %struct.rrsetinfo** %2, align 8
  %9 = getelementptr inbounds %struct.rrsetinfo, %struct.rrsetinfo* %8, i32 0, i32 5
  %10 = load %struct.rrsetinfo*, %struct.rrsetinfo** %9, align 8
  %11 = icmp ne %struct.rrsetinfo* %10, null
  br i1 %11, label %12, label %46

12:                                               ; preds = %7
  store i64 0, i64* %3, align 8
  br label %13

13:                                               ; preds = %38, %12
  %14 = load i64, i64* %3, align 8
  %15 = load %struct.rrsetinfo*, %struct.rrsetinfo** %2, align 8
  %16 = getelementptr inbounds %struct.rrsetinfo, %struct.rrsetinfo* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ult i64 %14, %17
  br i1 %18, label %19, label %41

19:                                               ; preds = %13
  %20 = load %struct.rrsetinfo*, %struct.rrsetinfo** %2, align 8
  %21 = getelementptr inbounds %struct.rrsetinfo, %struct.rrsetinfo* %20, i32 0, i32 5
  %22 = load %struct.rrsetinfo*, %struct.rrsetinfo** %21, align 8
  %23 = load i64, i64* %3, align 8
  %24 = getelementptr inbounds %struct.rrsetinfo, %struct.rrsetinfo* %22, i64 %23
  %25 = getelementptr inbounds %struct.rrsetinfo, %struct.rrsetinfo* %24, i32 0, i32 4
  %26 = load %struct.rrsetinfo*, %struct.rrsetinfo** %25, align 8
  %27 = icmp eq %struct.rrsetinfo* %26, null
  br i1 %27, label %28, label %29

28:                                               ; preds = %19
  br label %41

29:                                               ; preds = %19
  %30 = load %struct.rrsetinfo*, %struct.rrsetinfo** %2, align 8
  %31 = getelementptr inbounds %struct.rrsetinfo, %struct.rrsetinfo* %30, i32 0, i32 5
  %32 = load %struct.rrsetinfo*, %struct.rrsetinfo** %31, align 8
  %33 = load i64, i64* %3, align 8
  %34 = getelementptr inbounds %struct.rrsetinfo, %struct.rrsetinfo* %32, i64 %33
  %35 = getelementptr inbounds %struct.rrsetinfo, %struct.rrsetinfo* %34, i32 0, i32 4
  %36 = load %struct.rrsetinfo*, %struct.rrsetinfo** %35, align 8
  %37 = call i32 @free(%struct.rrsetinfo* %36)
  br label %38

38:                                               ; preds = %29
  %39 = load i64, i64* %3, align 8
  %40 = add i64 %39, 1
  store i64 %40, i64* %3, align 8
  br label %13

41:                                               ; preds = %28, %13
  %42 = load %struct.rrsetinfo*, %struct.rrsetinfo** %2, align 8
  %43 = getelementptr inbounds %struct.rrsetinfo, %struct.rrsetinfo* %42, i32 0, i32 5
  %44 = load %struct.rrsetinfo*, %struct.rrsetinfo** %43, align 8
  %45 = call i32 @free(%struct.rrsetinfo* %44)
  br label %46

46:                                               ; preds = %41, %7
  %47 = load %struct.rrsetinfo*, %struct.rrsetinfo** %2, align 8
  %48 = getelementptr inbounds %struct.rrsetinfo, %struct.rrsetinfo* %47, i32 0, i32 3
  %49 = load %struct.rrsetinfo*, %struct.rrsetinfo** %48, align 8
  %50 = icmp ne %struct.rrsetinfo* %49, null
  br i1 %50, label %51, label %85

51:                                               ; preds = %46
  store i64 0, i64* %3, align 8
  br label %52

52:                                               ; preds = %77, %51
  %53 = load i64, i64* %3, align 8
  %54 = load %struct.rrsetinfo*, %struct.rrsetinfo** %2, align 8
  %55 = getelementptr inbounds %struct.rrsetinfo, %struct.rrsetinfo* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = icmp ult i64 %53, %56
  br i1 %57, label %58, label %80

58:                                               ; preds = %52
  %59 = load %struct.rrsetinfo*, %struct.rrsetinfo** %2, align 8
  %60 = getelementptr inbounds %struct.rrsetinfo, %struct.rrsetinfo* %59, i32 0, i32 3
  %61 = load %struct.rrsetinfo*, %struct.rrsetinfo** %60, align 8
  %62 = load i64, i64* %3, align 8
  %63 = getelementptr inbounds %struct.rrsetinfo, %struct.rrsetinfo* %61, i64 %62
  %64 = getelementptr inbounds %struct.rrsetinfo, %struct.rrsetinfo* %63, i32 0, i32 4
  %65 = load %struct.rrsetinfo*, %struct.rrsetinfo** %64, align 8
  %66 = icmp eq %struct.rrsetinfo* %65, null
  br i1 %66, label %67, label %68

67:                                               ; preds = %58
  br label %80

68:                                               ; preds = %58
  %69 = load %struct.rrsetinfo*, %struct.rrsetinfo** %2, align 8
  %70 = getelementptr inbounds %struct.rrsetinfo, %struct.rrsetinfo* %69, i32 0, i32 3
  %71 = load %struct.rrsetinfo*, %struct.rrsetinfo** %70, align 8
  %72 = load i64, i64* %3, align 8
  %73 = getelementptr inbounds %struct.rrsetinfo, %struct.rrsetinfo* %71, i64 %72
  %74 = getelementptr inbounds %struct.rrsetinfo, %struct.rrsetinfo* %73, i32 0, i32 4
  %75 = load %struct.rrsetinfo*, %struct.rrsetinfo** %74, align 8
  %76 = call i32 @free(%struct.rrsetinfo* %75)
  br label %77

77:                                               ; preds = %68
  %78 = load i64, i64* %3, align 8
  %79 = add i64 %78, 1
  store i64 %79, i64* %3, align 8
  br label %52

80:                                               ; preds = %67, %52
  %81 = load %struct.rrsetinfo*, %struct.rrsetinfo** %2, align 8
  %82 = getelementptr inbounds %struct.rrsetinfo, %struct.rrsetinfo* %81, i32 0, i32 3
  %83 = load %struct.rrsetinfo*, %struct.rrsetinfo** %82, align 8
  %84 = call i32 @free(%struct.rrsetinfo* %83)
  br label %85

85:                                               ; preds = %80, %46
  %86 = load %struct.rrsetinfo*, %struct.rrsetinfo** %2, align 8
  %87 = getelementptr inbounds %struct.rrsetinfo, %struct.rrsetinfo* %86, i32 0, i32 2
  %88 = load %struct.rrsetinfo*, %struct.rrsetinfo** %87, align 8
  %89 = icmp ne %struct.rrsetinfo* %88, null
  br i1 %89, label %90, label %95

90:                                               ; preds = %85
  %91 = load %struct.rrsetinfo*, %struct.rrsetinfo** %2, align 8
  %92 = getelementptr inbounds %struct.rrsetinfo, %struct.rrsetinfo* %91, i32 0, i32 2
  %93 = load %struct.rrsetinfo*, %struct.rrsetinfo** %92, align 8
  %94 = call i32 @free(%struct.rrsetinfo* %93)
  br label %95

95:                                               ; preds = %90, %85
  %96 = load %struct.rrsetinfo*, %struct.rrsetinfo** %2, align 8
  %97 = call i32 @free(%struct.rrsetinfo* %96)
  br label %98

98:                                               ; preds = %95, %6
  ret void
}

declare dso_local i32 @free(%struct.rrsetinfo*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
