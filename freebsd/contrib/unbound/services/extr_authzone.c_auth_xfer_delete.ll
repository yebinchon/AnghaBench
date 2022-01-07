; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/services/extr_authzone.c_auth_xfer_delete.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/services/extr_authzone.c_auth_xfer_delete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.auth_xfer = type { i32, %struct.auth_xfer*, i64, i32, i32, i32, %struct.auth_xfer*, %struct.auth_xfer*, %struct.auth_xfer*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.auth_xfer*)* @auth_xfer_delete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @auth_xfer_delete(%struct.auth_xfer* %0) #0 {
  %2 = alloca %struct.auth_xfer*, align 8
  store %struct.auth_xfer* %0, %struct.auth_xfer** %2, align 8
  %3 = load %struct.auth_xfer*, %struct.auth_xfer** %2, align 8
  %4 = icmp ne %struct.auth_xfer* %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  br label %104

6:                                                ; preds = %1
  %7 = load %struct.auth_xfer*, %struct.auth_xfer** %2, align 8
  %8 = getelementptr inbounds %struct.auth_xfer, %struct.auth_xfer* %7, i32 0, i32 9
  %9 = call i32 @lock_basic_destroy(i32* %8)
  %10 = load %struct.auth_xfer*, %struct.auth_xfer** %2, align 8
  %11 = getelementptr inbounds %struct.auth_xfer, %struct.auth_xfer* %10, i32 0, i32 8
  %12 = load %struct.auth_xfer*, %struct.auth_xfer** %11, align 8
  %13 = call i32 @free(%struct.auth_xfer* %12)
  %14 = load %struct.auth_xfer*, %struct.auth_xfer** %2, align 8
  %15 = getelementptr inbounds %struct.auth_xfer, %struct.auth_xfer* %14, i32 0, i32 7
  %16 = load %struct.auth_xfer*, %struct.auth_xfer** %15, align 8
  %17 = icmp ne %struct.auth_xfer* %16, null
  br i1 %17, label %18, label %29

18:                                               ; preds = %6
  %19 = load %struct.auth_xfer*, %struct.auth_xfer** %2, align 8
  %20 = getelementptr inbounds %struct.auth_xfer, %struct.auth_xfer* %19, i32 0, i32 7
  %21 = load %struct.auth_xfer*, %struct.auth_xfer** %20, align 8
  %22 = getelementptr inbounds %struct.auth_xfer, %struct.auth_xfer* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @comm_timer_delete(i32 %23)
  %25 = load %struct.auth_xfer*, %struct.auth_xfer** %2, align 8
  %26 = getelementptr inbounds %struct.auth_xfer, %struct.auth_xfer* %25, i32 0, i32 7
  %27 = load %struct.auth_xfer*, %struct.auth_xfer** %26, align 8
  %28 = call i32 @free(%struct.auth_xfer* %27)
  br label %29

29:                                               ; preds = %18, %6
  %30 = load %struct.auth_xfer*, %struct.auth_xfer** %2, align 8
  %31 = getelementptr inbounds %struct.auth_xfer, %struct.auth_xfer* %30, i32 0, i32 6
  %32 = load %struct.auth_xfer*, %struct.auth_xfer** %31, align 8
  %33 = icmp ne %struct.auth_xfer* %32, null
  br i1 %33, label %34, label %57

34:                                               ; preds = %29
  %35 = load %struct.auth_xfer*, %struct.auth_xfer** %2, align 8
  %36 = getelementptr inbounds %struct.auth_xfer, %struct.auth_xfer* %35, i32 0, i32 6
  %37 = load %struct.auth_xfer*, %struct.auth_xfer** %36, align 8
  %38 = getelementptr inbounds %struct.auth_xfer, %struct.auth_xfer* %37, i32 0, i32 5
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @auth_free_masters(i32 %39)
  %41 = load %struct.auth_xfer*, %struct.auth_xfer** %2, align 8
  %42 = getelementptr inbounds %struct.auth_xfer, %struct.auth_xfer* %41, i32 0, i32 6
  %43 = load %struct.auth_xfer*, %struct.auth_xfer** %42, align 8
  %44 = getelementptr inbounds %struct.auth_xfer, %struct.auth_xfer* %43, i32 0, i32 4
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @comm_point_delete(i32 %45)
  %47 = load %struct.auth_xfer*, %struct.auth_xfer** %2, align 8
  %48 = getelementptr inbounds %struct.auth_xfer, %struct.auth_xfer* %47, i32 0, i32 6
  %49 = load %struct.auth_xfer*, %struct.auth_xfer** %48, align 8
  %50 = getelementptr inbounds %struct.auth_xfer, %struct.auth_xfer* %49, i32 0, i32 3
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @comm_timer_delete(i32 %51)
  %53 = load %struct.auth_xfer*, %struct.auth_xfer** %2, align 8
  %54 = getelementptr inbounds %struct.auth_xfer, %struct.auth_xfer* %53, i32 0, i32 6
  %55 = load %struct.auth_xfer*, %struct.auth_xfer** %54, align 8
  %56 = call i32 @free(%struct.auth_xfer* %55)
  br label %57

57:                                               ; preds = %34, %29
  %58 = load %struct.auth_xfer*, %struct.auth_xfer** %2, align 8
  %59 = getelementptr inbounds %struct.auth_xfer, %struct.auth_xfer* %58, i32 0, i32 1
  %60 = load %struct.auth_xfer*, %struct.auth_xfer** %59, align 8
  %61 = icmp ne %struct.auth_xfer* %60, null
  br i1 %61, label %62, label %97

62:                                               ; preds = %57
  %63 = load %struct.auth_xfer*, %struct.auth_xfer** %2, align 8
  %64 = getelementptr inbounds %struct.auth_xfer, %struct.auth_xfer* %63, i32 0, i32 1
  %65 = load %struct.auth_xfer*, %struct.auth_xfer** %64, align 8
  %66 = getelementptr inbounds %struct.auth_xfer, %struct.auth_xfer* %65, i32 0, i32 5
  %67 = load i32, i32* %66, align 8
  %68 = call i32 @auth_free_masters(i32 %67)
  %69 = load %struct.auth_xfer*, %struct.auth_xfer** %2, align 8
  %70 = getelementptr inbounds %struct.auth_xfer, %struct.auth_xfer* %69, i32 0, i32 1
  %71 = load %struct.auth_xfer*, %struct.auth_xfer** %70, align 8
  %72 = getelementptr inbounds %struct.auth_xfer, %struct.auth_xfer* %71, i32 0, i32 4
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @comm_point_delete(i32 %73)
  %75 = load %struct.auth_xfer*, %struct.auth_xfer** %2, align 8
  %76 = getelementptr inbounds %struct.auth_xfer, %struct.auth_xfer* %75, i32 0, i32 1
  %77 = load %struct.auth_xfer*, %struct.auth_xfer** %76, align 8
  %78 = getelementptr inbounds %struct.auth_xfer, %struct.auth_xfer* %77, i32 0, i32 3
  %79 = load i32, i32* %78, align 8
  %80 = call i32 @comm_timer_delete(i32 %79)
  %81 = load %struct.auth_xfer*, %struct.auth_xfer** %2, align 8
  %82 = getelementptr inbounds %struct.auth_xfer, %struct.auth_xfer* %81, i32 0, i32 1
  %83 = load %struct.auth_xfer*, %struct.auth_xfer** %82, align 8
  %84 = getelementptr inbounds %struct.auth_xfer, %struct.auth_xfer* %83, i32 0, i32 2
  %85 = load i64, i64* %84, align 8
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %92

87:                                               ; preds = %62
  %88 = load %struct.auth_xfer*, %struct.auth_xfer** %2, align 8
  %89 = getelementptr inbounds %struct.auth_xfer, %struct.auth_xfer* %88, i32 0, i32 1
  %90 = load %struct.auth_xfer*, %struct.auth_xfer** %89, align 8
  %91 = call i32 @auth_chunks_delete(%struct.auth_xfer* %90)
  br label %92

92:                                               ; preds = %87, %62
  %93 = load %struct.auth_xfer*, %struct.auth_xfer** %2, align 8
  %94 = getelementptr inbounds %struct.auth_xfer, %struct.auth_xfer* %93, i32 0, i32 1
  %95 = load %struct.auth_xfer*, %struct.auth_xfer** %94, align 8
  %96 = call i32 @free(%struct.auth_xfer* %95)
  br label %97

97:                                               ; preds = %92, %57
  %98 = load %struct.auth_xfer*, %struct.auth_xfer** %2, align 8
  %99 = getelementptr inbounds %struct.auth_xfer, %struct.auth_xfer* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = call i32 @auth_free_masters(i32 %100)
  %102 = load %struct.auth_xfer*, %struct.auth_xfer** %2, align 8
  %103 = call i32 @free(%struct.auth_xfer* %102)
  br label %104

104:                                              ; preds = %97, %5
  ret void
}

declare dso_local i32 @lock_basic_destroy(i32*) #1

declare dso_local i32 @free(%struct.auth_xfer*) #1

declare dso_local i32 @comm_timer_delete(i32) #1

declare dso_local i32 @auth_free_masters(i32) #1

declare dso_local i32 @comm_point_delete(i32) #1

declare dso_local i32 @auth_chunks_delete(%struct.auth_xfer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
