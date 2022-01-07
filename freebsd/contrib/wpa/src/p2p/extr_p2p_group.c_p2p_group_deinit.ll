; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/p2p/extr_p2p_group.c_p2p_group_deinit.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/p2p/extr_p2p_group.c_p2p_group_deinit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.p2p_group = type { i32, i32, %struct.p2p_group*, %struct.p2p_data* }
%struct.p2p_data = type { i64, %struct.p2p_group** }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @p2p_group_deinit(%struct.p2p_group* %0) #0 {
  %2 = alloca %struct.p2p_group*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.p2p_data*, align 8
  store %struct.p2p_group* %0, %struct.p2p_group** %2, align 8
  %5 = load %struct.p2p_group*, %struct.p2p_group** %2, align 8
  %6 = icmp eq %struct.p2p_group* %5, null
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  br label %76

8:                                                ; preds = %1
  %9 = load %struct.p2p_group*, %struct.p2p_group** %2, align 8
  %10 = getelementptr inbounds %struct.p2p_group, %struct.p2p_group* %9, i32 0, i32 3
  %11 = load %struct.p2p_data*, %struct.p2p_data** %10, align 8
  store %struct.p2p_data* %11, %struct.p2p_data** %4, align 8
  store i64 0, i64* %3, align 8
  br label %12

12:                                               ; preds = %56, %8
  %13 = load i64, i64* %3, align 8
  %14 = load %struct.p2p_data*, %struct.p2p_data** %4, align 8
  %15 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp ult i64 %13, %16
  br i1 %17, label %18, label %59

18:                                               ; preds = %12
  %19 = load %struct.p2p_data*, %struct.p2p_data** %4, align 8
  %20 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %19, i32 0, i32 1
  %21 = load %struct.p2p_group**, %struct.p2p_group*** %20, align 8
  %22 = load i64, i64* %3, align 8
  %23 = getelementptr inbounds %struct.p2p_group*, %struct.p2p_group** %21, i64 %22
  %24 = load %struct.p2p_group*, %struct.p2p_group** %23, align 8
  %25 = load %struct.p2p_group*, %struct.p2p_group** %2, align 8
  %26 = icmp eq %struct.p2p_group* %24, %25
  br i1 %26, label %27, label %55

27:                                               ; preds = %18
  br label %28

28:                                               ; preds = %35, %27
  %29 = load i64, i64* %3, align 8
  %30 = add i64 %29, 1
  %31 = load %struct.p2p_data*, %struct.p2p_data** %4, align 8
  %32 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp ult i64 %30, %33
  br i1 %34, label %35, label %50

35:                                               ; preds = %28
  %36 = load %struct.p2p_data*, %struct.p2p_data** %4, align 8
  %37 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %36, i32 0, i32 1
  %38 = load %struct.p2p_group**, %struct.p2p_group*** %37, align 8
  %39 = load i64, i64* %3, align 8
  %40 = add i64 %39, 1
  %41 = getelementptr inbounds %struct.p2p_group*, %struct.p2p_group** %38, i64 %40
  %42 = load %struct.p2p_group*, %struct.p2p_group** %41, align 8
  %43 = load %struct.p2p_data*, %struct.p2p_data** %4, align 8
  %44 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %43, i32 0, i32 1
  %45 = load %struct.p2p_group**, %struct.p2p_group*** %44, align 8
  %46 = load i64, i64* %3, align 8
  %47 = getelementptr inbounds %struct.p2p_group*, %struct.p2p_group** %45, i64 %46
  store %struct.p2p_group* %42, %struct.p2p_group** %47, align 8
  %48 = load i64, i64* %3, align 8
  %49 = add i64 %48, 1
  store i64 %49, i64* %3, align 8
  br label %28

50:                                               ; preds = %28
  %51 = load %struct.p2p_data*, %struct.p2p_data** %4, align 8
  %52 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = add i64 %53, -1
  store i64 %54, i64* %52, align 8
  br label %59

55:                                               ; preds = %18
  br label %56

56:                                               ; preds = %55
  %57 = load i64, i64* %3, align 8
  %58 = add i64 %57, 1
  store i64 %58, i64* %3, align 8
  br label %12

59:                                               ; preds = %50, %12
  %60 = load %struct.p2p_group*, %struct.p2p_group** %2, align 8
  %61 = call i32 @p2p_group_free_members(%struct.p2p_group* %60)
  %62 = load %struct.p2p_group*, %struct.p2p_group** %2, align 8
  %63 = getelementptr inbounds %struct.p2p_group, %struct.p2p_group* %62, i32 0, i32 2
  %64 = load %struct.p2p_group*, %struct.p2p_group** %63, align 8
  %65 = call i32 @os_free(%struct.p2p_group* %64)
  %66 = load %struct.p2p_group*, %struct.p2p_group** %2, align 8
  %67 = getelementptr inbounds %struct.p2p_group, %struct.p2p_group* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @wpabuf_free(i32 %68)
  %70 = load %struct.p2p_group*, %struct.p2p_group** %2, align 8
  %71 = getelementptr inbounds %struct.p2p_group, %struct.p2p_group* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = call i32 @wpabuf_free(i32 %72)
  %74 = load %struct.p2p_group*, %struct.p2p_group** %2, align 8
  %75 = call i32 @os_free(%struct.p2p_group* %74)
  br label %76

76:                                               ; preds = %59, %7
  ret void
}

declare dso_local i32 @p2p_group_free_members(%struct.p2p_group*) #1

declare dso_local i32 @os_free(%struct.p2p_group*) #1

declare dso_local i32 @wpabuf_free(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
