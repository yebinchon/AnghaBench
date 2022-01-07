; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/radius/extr_radius_client.c_radius_retry_primary_timer.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/radius/extr_radius_client.c_radius_retry_primary_timer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radius_client_data = type { i64, i64, i32, i32, i32, i32, %struct.hostapd_radius_servers* }
%struct.hostapd_radius_servers = type { i64, %struct.hostapd_radius_server*, %struct.hostapd_radius_server*, %struct.hostapd_radius_server*, %struct.hostapd_radius_server* }
%struct.hostapd_radius_server = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*)* @radius_retry_primary_timer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @radius_retry_primary_timer(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.radius_client_data*, align 8
  %6 = alloca %struct.hostapd_radius_servers*, align 8
  %7 = alloca %struct.hostapd_radius_server*, align 8
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %8 = load i8*, i8** %3, align 8
  %9 = bitcast i8* %8 to %struct.radius_client_data*
  store %struct.radius_client_data* %9, %struct.radius_client_data** %5, align 8
  %10 = load %struct.radius_client_data*, %struct.radius_client_data** %5, align 8
  %11 = getelementptr inbounds %struct.radius_client_data, %struct.radius_client_data* %10, i32 0, i32 6
  %12 = load %struct.hostapd_radius_servers*, %struct.hostapd_radius_servers** %11, align 8
  store %struct.hostapd_radius_servers* %12, %struct.hostapd_radius_servers** %6, align 8
  %13 = load %struct.radius_client_data*, %struct.radius_client_data** %5, align 8
  %14 = getelementptr inbounds %struct.radius_client_data, %struct.radius_client_data* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp sge i64 %15, 0
  br i1 %16, label %17, label %69

17:                                               ; preds = %2
  %18 = load %struct.hostapd_radius_servers*, %struct.hostapd_radius_servers** %6, align 8
  %19 = getelementptr inbounds %struct.hostapd_radius_servers, %struct.hostapd_radius_servers* %18, i32 0, i32 4
  %20 = load %struct.hostapd_radius_server*, %struct.hostapd_radius_server** %19, align 8
  %21 = icmp ne %struct.hostapd_radius_server* %20, null
  br i1 %21, label %22, label %69

22:                                               ; preds = %17
  %23 = load %struct.hostapd_radius_servers*, %struct.hostapd_radius_servers** %6, align 8
  %24 = getelementptr inbounds %struct.hostapd_radius_servers, %struct.hostapd_radius_servers* %23, i32 0, i32 3
  %25 = load %struct.hostapd_radius_server*, %struct.hostapd_radius_server** %24, align 8
  %26 = load %struct.hostapd_radius_servers*, %struct.hostapd_radius_servers** %6, align 8
  %27 = getelementptr inbounds %struct.hostapd_radius_servers, %struct.hostapd_radius_servers* %26, i32 0, i32 4
  %28 = load %struct.hostapd_radius_server*, %struct.hostapd_radius_server** %27, align 8
  %29 = icmp ne %struct.hostapd_radius_server* %25, %28
  br i1 %29, label %30, label %69

30:                                               ; preds = %22
  %31 = load %struct.hostapd_radius_servers*, %struct.hostapd_radius_servers** %6, align 8
  %32 = getelementptr inbounds %struct.hostapd_radius_servers, %struct.hostapd_radius_servers* %31, i32 0, i32 3
  %33 = load %struct.hostapd_radius_server*, %struct.hostapd_radius_server** %32, align 8
  store %struct.hostapd_radius_server* %33, %struct.hostapd_radius_server** %7, align 8
  %34 = load %struct.hostapd_radius_servers*, %struct.hostapd_radius_servers** %6, align 8
  %35 = getelementptr inbounds %struct.hostapd_radius_servers, %struct.hostapd_radius_servers* %34, i32 0, i32 4
  %36 = load %struct.hostapd_radius_server*, %struct.hostapd_radius_server** %35, align 8
  %37 = load %struct.hostapd_radius_servers*, %struct.hostapd_radius_servers** %6, align 8
  %38 = getelementptr inbounds %struct.hostapd_radius_servers, %struct.hostapd_radius_servers* %37, i32 0, i32 3
  store %struct.hostapd_radius_server* %36, %struct.hostapd_radius_server** %38, align 8
  %39 = load %struct.radius_client_data*, %struct.radius_client_data** %5, align 8
  %40 = load %struct.hostapd_radius_servers*, %struct.hostapd_radius_servers** %6, align 8
  %41 = getelementptr inbounds %struct.hostapd_radius_servers, %struct.hostapd_radius_servers* %40, i32 0, i32 3
  %42 = load %struct.hostapd_radius_server*, %struct.hostapd_radius_server** %41, align 8
  %43 = load %struct.hostapd_radius_server*, %struct.hostapd_radius_server** %7, align 8
  %44 = load %struct.radius_client_data*, %struct.radius_client_data** %5, align 8
  %45 = getelementptr inbounds %struct.radius_client_data, %struct.radius_client_data* %44, i32 0, i32 5
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.radius_client_data*, %struct.radius_client_data** %5, align 8
  %48 = getelementptr inbounds %struct.radius_client_data, %struct.radius_client_data* %47, i32 0, i32 4
  %49 = load i32, i32* %48, align 8
  %50 = call i64 @radius_change_server(%struct.radius_client_data* %39, %struct.hostapd_radius_server* %42, %struct.hostapd_radius_server* %43, i32 %46, i32 %49, i32 1)
  %51 = icmp slt i64 %50, 0
  br i1 %51, label %52, label %68

52:                                               ; preds = %30
  %53 = load %struct.hostapd_radius_server*, %struct.hostapd_radius_server** %7, align 8
  %54 = load %struct.hostapd_radius_servers*, %struct.hostapd_radius_servers** %6, align 8
  %55 = getelementptr inbounds %struct.hostapd_radius_servers, %struct.hostapd_radius_servers* %54, i32 0, i32 3
  store %struct.hostapd_radius_server* %53, %struct.hostapd_radius_server** %55, align 8
  %56 = load %struct.radius_client_data*, %struct.radius_client_data** %5, align 8
  %57 = load %struct.hostapd_radius_server*, %struct.hostapd_radius_server** %7, align 8
  %58 = load %struct.hostapd_radius_servers*, %struct.hostapd_radius_servers** %6, align 8
  %59 = getelementptr inbounds %struct.hostapd_radius_servers, %struct.hostapd_radius_servers* %58, i32 0, i32 3
  %60 = load %struct.hostapd_radius_server*, %struct.hostapd_radius_server** %59, align 8
  %61 = load %struct.radius_client_data*, %struct.radius_client_data** %5, align 8
  %62 = getelementptr inbounds %struct.radius_client_data, %struct.radius_client_data* %61, i32 0, i32 5
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.radius_client_data*, %struct.radius_client_data** %5, align 8
  %65 = getelementptr inbounds %struct.radius_client_data, %struct.radius_client_data* %64, i32 0, i32 4
  %66 = load i32, i32* %65, align 8
  %67 = call i64 @radius_change_server(%struct.radius_client_data* %56, %struct.hostapd_radius_server* %57, %struct.hostapd_radius_server* %60, i32 %63, i32 %66, i32 1)
  br label %68

68:                                               ; preds = %52, %30
  br label %69

69:                                               ; preds = %68, %22, %17, %2
  %70 = load %struct.radius_client_data*, %struct.radius_client_data** %5, align 8
  %71 = getelementptr inbounds %struct.radius_client_data, %struct.radius_client_data* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = icmp sge i64 %72, 0
  br i1 %73, label %74, label %126

74:                                               ; preds = %69
  %75 = load %struct.hostapd_radius_servers*, %struct.hostapd_radius_servers** %6, align 8
  %76 = getelementptr inbounds %struct.hostapd_radius_servers, %struct.hostapd_radius_servers* %75, i32 0, i32 2
  %77 = load %struct.hostapd_radius_server*, %struct.hostapd_radius_server** %76, align 8
  %78 = icmp ne %struct.hostapd_radius_server* %77, null
  br i1 %78, label %79, label %126

79:                                               ; preds = %74
  %80 = load %struct.hostapd_radius_servers*, %struct.hostapd_radius_servers** %6, align 8
  %81 = getelementptr inbounds %struct.hostapd_radius_servers, %struct.hostapd_radius_servers* %80, i32 0, i32 1
  %82 = load %struct.hostapd_radius_server*, %struct.hostapd_radius_server** %81, align 8
  %83 = load %struct.hostapd_radius_servers*, %struct.hostapd_radius_servers** %6, align 8
  %84 = getelementptr inbounds %struct.hostapd_radius_servers, %struct.hostapd_radius_servers* %83, i32 0, i32 2
  %85 = load %struct.hostapd_radius_server*, %struct.hostapd_radius_server** %84, align 8
  %86 = icmp ne %struct.hostapd_radius_server* %82, %85
  br i1 %86, label %87, label %126

87:                                               ; preds = %79
  %88 = load %struct.hostapd_radius_servers*, %struct.hostapd_radius_servers** %6, align 8
  %89 = getelementptr inbounds %struct.hostapd_radius_servers, %struct.hostapd_radius_servers* %88, i32 0, i32 1
  %90 = load %struct.hostapd_radius_server*, %struct.hostapd_radius_server** %89, align 8
  store %struct.hostapd_radius_server* %90, %struct.hostapd_radius_server** %7, align 8
  %91 = load %struct.hostapd_radius_servers*, %struct.hostapd_radius_servers** %6, align 8
  %92 = getelementptr inbounds %struct.hostapd_radius_servers, %struct.hostapd_radius_servers* %91, i32 0, i32 2
  %93 = load %struct.hostapd_radius_server*, %struct.hostapd_radius_server** %92, align 8
  %94 = load %struct.hostapd_radius_servers*, %struct.hostapd_radius_servers** %6, align 8
  %95 = getelementptr inbounds %struct.hostapd_radius_servers, %struct.hostapd_radius_servers* %94, i32 0, i32 1
  store %struct.hostapd_radius_server* %93, %struct.hostapd_radius_server** %95, align 8
  %96 = load %struct.radius_client_data*, %struct.radius_client_data** %5, align 8
  %97 = load %struct.hostapd_radius_servers*, %struct.hostapd_radius_servers** %6, align 8
  %98 = getelementptr inbounds %struct.hostapd_radius_servers, %struct.hostapd_radius_servers* %97, i32 0, i32 1
  %99 = load %struct.hostapd_radius_server*, %struct.hostapd_radius_server** %98, align 8
  %100 = load %struct.hostapd_radius_server*, %struct.hostapd_radius_server** %7, align 8
  %101 = load %struct.radius_client_data*, %struct.radius_client_data** %5, align 8
  %102 = getelementptr inbounds %struct.radius_client_data, %struct.radius_client_data* %101, i32 0, i32 3
  %103 = load i32, i32* %102, align 4
  %104 = load %struct.radius_client_data*, %struct.radius_client_data** %5, align 8
  %105 = getelementptr inbounds %struct.radius_client_data, %struct.radius_client_data* %104, i32 0, i32 2
  %106 = load i32, i32* %105, align 8
  %107 = call i64 @radius_change_server(%struct.radius_client_data* %96, %struct.hostapd_radius_server* %99, %struct.hostapd_radius_server* %100, i32 %103, i32 %106, i32 0)
  %108 = icmp slt i64 %107, 0
  br i1 %108, label %109, label %125

109:                                              ; preds = %87
  %110 = load %struct.hostapd_radius_server*, %struct.hostapd_radius_server** %7, align 8
  %111 = load %struct.hostapd_radius_servers*, %struct.hostapd_radius_servers** %6, align 8
  %112 = getelementptr inbounds %struct.hostapd_radius_servers, %struct.hostapd_radius_servers* %111, i32 0, i32 1
  store %struct.hostapd_radius_server* %110, %struct.hostapd_radius_server** %112, align 8
  %113 = load %struct.radius_client_data*, %struct.radius_client_data** %5, align 8
  %114 = load %struct.hostapd_radius_server*, %struct.hostapd_radius_server** %7, align 8
  %115 = load %struct.hostapd_radius_servers*, %struct.hostapd_radius_servers** %6, align 8
  %116 = getelementptr inbounds %struct.hostapd_radius_servers, %struct.hostapd_radius_servers* %115, i32 0, i32 1
  %117 = load %struct.hostapd_radius_server*, %struct.hostapd_radius_server** %116, align 8
  %118 = load %struct.radius_client_data*, %struct.radius_client_data** %5, align 8
  %119 = getelementptr inbounds %struct.radius_client_data, %struct.radius_client_data* %118, i32 0, i32 3
  %120 = load i32, i32* %119, align 4
  %121 = load %struct.radius_client_data*, %struct.radius_client_data** %5, align 8
  %122 = getelementptr inbounds %struct.radius_client_data, %struct.radius_client_data* %121, i32 0, i32 2
  %123 = load i32, i32* %122, align 8
  %124 = call i64 @radius_change_server(%struct.radius_client_data* %113, %struct.hostapd_radius_server* %114, %struct.hostapd_radius_server* %117, i32 %120, i32 %123, i32 0)
  br label %125

125:                                              ; preds = %109, %87
  br label %126

126:                                              ; preds = %125, %79, %74, %69
  %127 = load %struct.hostapd_radius_servers*, %struct.hostapd_radius_servers** %6, align 8
  %128 = getelementptr inbounds %struct.hostapd_radius_servers, %struct.hostapd_radius_servers* %127, i32 0, i32 0
  %129 = load i64, i64* %128, align 8
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %137

131:                                              ; preds = %126
  %132 = load %struct.hostapd_radius_servers*, %struct.hostapd_radius_servers** %6, align 8
  %133 = getelementptr inbounds %struct.hostapd_radius_servers, %struct.hostapd_radius_servers* %132, i32 0, i32 0
  %134 = load i64, i64* %133, align 8
  %135 = load %struct.radius_client_data*, %struct.radius_client_data** %5, align 8
  %136 = call i32 @eloop_register_timeout(i64 %134, i32 0, void (i8*, i8*)* @radius_retry_primary_timer, %struct.radius_client_data* %135, i32* null)
  br label %137

137:                                              ; preds = %131, %126
  ret void
}

declare dso_local i64 @radius_change_server(%struct.radius_client_data*, %struct.hostapd_radius_server*, %struct.hostapd_radius_server*, i32, i32, i32) #1

declare dso_local i32 @eloop_register_timeout(i64, i32, void (i8*, i8*)*, %struct.radius_client_data*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
