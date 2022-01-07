; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/drivers/extr_driver_atheros.c_atheros_deinit.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/drivers/extr_driver_atheros.c_atheros_deinit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atheros_driver_data = type { i64, i32*, i32*, i32*, i32, i32, i64, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @atheros_deinit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @atheros_deinit(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.atheros_driver_data*, align 8
  store i8* %0, i8** %2, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = bitcast i8* %4 to %struct.atheros_driver_data*
  store %struct.atheros_driver_data* %5, %struct.atheros_driver_data** %3, align 8
  %6 = load %struct.atheros_driver_data*, %struct.atheros_driver_data** %3, align 8
  %7 = call i32 @atheros_reset_appfilter(%struct.atheros_driver_data* %6)
  %8 = load %struct.atheros_driver_data*, %struct.atheros_driver_data** %3, align 8
  %9 = getelementptr inbounds %struct.atheros_driver_data, %struct.atheros_driver_data* %8, i32 0, i32 8
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %22, label %12

12:                                               ; preds = %1
  %13 = load %struct.atheros_driver_data*, %struct.atheros_driver_data** %3, align 8
  %14 = getelementptr inbounds %struct.atheros_driver_data, %struct.atheros_driver_data* %13, i32 0, i32 7
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %22, label %17

17:                                               ; preds = %12
  %18 = load %struct.atheros_driver_data*, %struct.atheros_driver_data** %3, align 8
  %19 = getelementptr inbounds %struct.atheros_driver_data, %struct.atheros_driver_data* %18, i32 0, i32 6
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %37

22:                                               ; preds = %17, %12, %1
  %23 = load i8*, i8** %2, align 8
  %24 = call i32 @atheros_set_opt_ie(i8* %23, i32* null, i32 0)
  %25 = load %struct.atheros_driver_data*, %struct.atheros_driver_data** %3, align 8
  %26 = getelementptr inbounds %struct.atheros_driver_data, %struct.atheros_driver_data* %25, i32 0, i32 8
  %27 = load i64, i64* %26, align 8
  %28 = call i32 @wpabuf_free(i64 %27)
  %29 = load %struct.atheros_driver_data*, %struct.atheros_driver_data** %3, align 8
  %30 = getelementptr inbounds %struct.atheros_driver_data, %struct.atheros_driver_data* %29, i32 0, i32 7
  %31 = load i64, i64* %30, align 8
  %32 = call i32 @wpabuf_free(i64 %31)
  %33 = load %struct.atheros_driver_data*, %struct.atheros_driver_data** %3, align 8
  %34 = getelementptr inbounds %struct.atheros_driver_data, %struct.atheros_driver_data* %33, i32 0, i32 6
  %35 = load i64, i64* %34, align 8
  %36 = call i32 @wpabuf_free(i64 %35)
  br label %37

37:                                               ; preds = %22, %17
  %38 = load %struct.atheros_driver_data*, %struct.atheros_driver_data** %3, align 8
  %39 = getelementptr inbounds %struct.atheros_driver_data, %struct.atheros_driver_data* %38, i32 0, i32 5
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @netlink_deinit(i32 %40)
  %42 = load %struct.atheros_driver_data*, %struct.atheros_driver_data** %3, align 8
  %43 = getelementptr inbounds %struct.atheros_driver_data, %struct.atheros_driver_data* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load %struct.atheros_driver_data*, %struct.atheros_driver_data** %3, align 8
  %46 = getelementptr inbounds %struct.atheros_driver_data, %struct.atheros_driver_data* %45, i32 0, i32 4
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @linux_set_iface_flags(i64 %44, i32 %47, i32 0)
  %49 = load %struct.atheros_driver_data*, %struct.atheros_driver_data** %3, align 8
  %50 = getelementptr inbounds %struct.atheros_driver_data, %struct.atheros_driver_data* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = icmp sge i64 %51, 0
  br i1 %52, label %53, label %58

53:                                               ; preds = %37
  %54 = load %struct.atheros_driver_data*, %struct.atheros_driver_data** %3, align 8
  %55 = getelementptr inbounds %struct.atheros_driver_data, %struct.atheros_driver_data* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = call i32 @close(i64 %56)
  br label %58

58:                                               ; preds = %53, %37
  %59 = load %struct.atheros_driver_data*, %struct.atheros_driver_data** %3, align 8
  %60 = getelementptr inbounds %struct.atheros_driver_data, %struct.atheros_driver_data* %59, i32 0, i32 3
  %61 = load i32*, i32** %60, align 8
  %62 = icmp ne i32* %61, null
  br i1 %62, label %63, label %76

63:                                               ; preds = %58
  %64 = load %struct.atheros_driver_data*, %struct.atheros_driver_data** %3, align 8
  %65 = getelementptr inbounds %struct.atheros_driver_data, %struct.atheros_driver_data* %64, i32 0, i32 3
  %66 = load i32*, i32** %65, align 8
  %67 = load %struct.atheros_driver_data*, %struct.atheros_driver_data** %3, align 8
  %68 = getelementptr inbounds %struct.atheros_driver_data, %struct.atheros_driver_data* %67, i32 0, i32 2
  %69 = load i32*, i32** %68, align 8
  %70 = icmp ne i32* %66, %69
  br i1 %70, label %71, label %76

71:                                               ; preds = %63
  %72 = load %struct.atheros_driver_data*, %struct.atheros_driver_data** %3, align 8
  %73 = getelementptr inbounds %struct.atheros_driver_data, %struct.atheros_driver_data* %72, i32 0, i32 3
  %74 = load i32*, i32** %73, align 8
  %75 = call i32 @l2_packet_deinit(i32* %74)
  br label %76

76:                                               ; preds = %71, %63, %58
  %77 = load %struct.atheros_driver_data*, %struct.atheros_driver_data** %3, align 8
  %78 = getelementptr inbounds %struct.atheros_driver_data, %struct.atheros_driver_data* %77, i32 0, i32 2
  %79 = load i32*, i32** %78, align 8
  %80 = icmp ne i32* %79, null
  br i1 %80, label %81, label %86

81:                                               ; preds = %76
  %82 = load %struct.atheros_driver_data*, %struct.atheros_driver_data** %3, align 8
  %83 = getelementptr inbounds %struct.atheros_driver_data, %struct.atheros_driver_data* %82, i32 0, i32 2
  %84 = load i32*, i32** %83, align 8
  %85 = call i32 @l2_packet_deinit(i32* %84)
  br label %86

86:                                               ; preds = %81, %76
  %87 = load %struct.atheros_driver_data*, %struct.atheros_driver_data** %3, align 8
  %88 = getelementptr inbounds %struct.atheros_driver_data, %struct.atheros_driver_data* %87, i32 0, i32 1
  %89 = load i32*, i32** %88, align 8
  %90 = icmp ne i32* %89, null
  br i1 %90, label %91, label %96

91:                                               ; preds = %86
  %92 = load %struct.atheros_driver_data*, %struct.atheros_driver_data** %3, align 8
  %93 = getelementptr inbounds %struct.atheros_driver_data, %struct.atheros_driver_data* %92, i32 0, i32 1
  %94 = load i32*, i32** %93, align 8
  %95 = call i32 @l2_packet_deinit(i32* %94)
  br label %96

96:                                               ; preds = %91, %86
  %97 = load %struct.atheros_driver_data*, %struct.atheros_driver_data** %3, align 8
  %98 = call i32 @os_free(%struct.atheros_driver_data* %97)
  ret void
}

declare dso_local i32 @atheros_reset_appfilter(%struct.atheros_driver_data*) #1

declare dso_local i32 @atheros_set_opt_ie(i8*, i32*, i32) #1

declare dso_local i32 @wpabuf_free(i64) #1

declare dso_local i32 @netlink_deinit(i32) #1

declare dso_local i32 @linux_set_iface_flags(i64, i32, i32) #1

declare dso_local i32 @close(i64) #1

declare dso_local i32 @l2_packet_deinit(i32*) #1

declare dso_local i32 @os_free(%struct.atheros_driver_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
