; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/radius/extr_radius_client.c_radius_client_get_mib.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/radius/extr_radius_client.c_radius_client_get_mib.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radius_client_data = type { %struct.hostapd_radius_servers* }
%struct.hostapd_radius_servers = type { i32, i32, %struct.hostapd_radius_server*, %struct.hostapd_radius_server*, %struct.hostapd_radius_server*, %struct.hostapd_radius_server* }
%struct.hostapd_radius_server = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @radius_client_get_mib(%struct.radius_client_data* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.radius_client_data*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.hostapd_radius_servers*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.hostapd_radius_server*, align 8
  %11 = alloca i32, align 4
  store %struct.radius_client_data* %0, %struct.radius_client_data** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 0, i32* %11, align 4
  %12 = load %struct.radius_client_data*, %struct.radius_client_data** %5, align 8
  %13 = icmp ne %struct.radius_client_data* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %114

15:                                               ; preds = %3
  %16 = load %struct.radius_client_data*, %struct.radius_client_data** %5, align 8
  %17 = getelementptr inbounds %struct.radius_client_data, %struct.radius_client_data* %16, i32 0, i32 0
  %18 = load %struct.hostapd_radius_servers*, %struct.hostapd_radius_servers** %17, align 8
  store %struct.hostapd_radius_servers* %18, %struct.hostapd_radius_servers** %8, align 8
  %19 = load %struct.hostapd_radius_servers*, %struct.hostapd_radius_servers** %8, align 8
  %20 = getelementptr inbounds %struct.hostapd_radius_servers, %struct.hostapd_radius_servers* %19, i32 0, i32 5
  %21 = load %struct.hostapd_radius_server*, %struct.hostapd_radius_server** %20, align 8
  %22 = icmp ne %struct.hostapd_radius_server* %21, null
  br i1 %22, label %23, label %65

23:                                               ; preds = %15
  store i32 0, i32* %9, align 4
  br label %24

24:                                               ; preds = %61, %23
  %25 = load i32, i32* %9, align 4
  %26 = load %struct.hostapd_radius_servers*, %struct.hostapd_radius_servers** %8, align 8
  %27 = getelementptr inbounds %struct.hostapd_radius_servers, %struct.hostapd_radius_servers* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp slt i32 %25, %28
  br i1 %29, label %30, label %64

30:                                               ; preds = %24
  %31 = load %struct.hostapd_radius_servers*, %struct.hostapd_radius_servers** %8, align 8
  %32 = getelementptr inbounds %struct.hostapd_radius_servers, %struct.hostapd_radius_servers* %31, i32 0, i32 5
  %33 = load %struct.hostapd_radius_server*, %struct.hostapd_radius_server** %32, align 8
  %34 = load i32, i32* %9, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.hostapd_radius_server, %struct.hostapd_radius_server* %33, i64 %35
  store %struct.hostapd_radius_server* %36, %struct.hostapd_radius_server** %10, align 8
  %37 = load i8*, i8** %6, align 8
  %38 = load i32, i32* %11, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i8, i8* %37, i64 %39
  %41 = load i64, i64* %7, align 8
  %42 = load i32, i32* %11, align 4
  %43 = sext i32 %42 to i64
  %44 = sub i64 %41, %43
  %45 = load %struct.hostapd_radius_server*, %struct.hostapd_radius_server** %10, align 8
  %46 = load %struct.hostapd_radius_server*, %struct.hostapd_radius_server** %10, align 8
  %47 = load %struct.hostapd_radius_servers*, %struct.hostapd_radius_servers** %8, align 8
  %48 = getelementptr inbounds %struct.hostapd_radius_servers, %struct.hostapd_radius_servers* %47, i32 0, i32 4
  %49 = load %struct.hostapd_radius_server*, %struct.hostapd_radius_server** %48, align 8
  %50 = icmp eq %struct.hostapd_radius_server* %46, %49
  br i1 %50, label %51, label %53

51:                                               ; preds = %30
  %52 = load %struct.radius_client_data*, %struct.radius_client_data** %5, align 8
  br label %54

53:                                               ; preds = %30
  br label %54

54:                                               ; preds = %53, %51
  %55 = phi %struct.radius_client_data* [ %52, %51 ], [ null, %53 ]
  %56 = call i64 @radius_client_dump_auth_server(i8* %40, i64 %44, %struct.hostapd_radius_server* %45, %struct.radius_client_data* %55)
  %57 = load i32, i32* %11, align 4
  %58 = sext i32 %57 to i64
  %59 = add nsw i64 %58, %56
  %60 = trunc i64 %59 to i32
  store i32 %60, i32* %11, align 4
  br label %61

61:                                               ; preds = %54
  %62 = load i32, i32* %9, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %9, align 4
  br label %24

64:                                               ; preds = %24
  br label %65

65:                                               ; preds = %64, %15
  %66 = load %struct.hostapd_radius_servers*, %struct.hostapd_radius_servers** %8, align 8
  %67 = getelementptr inbounds %struct.hostapd_radius_servers, %struct.hostapd_radius_servers* %66, i32 0, i32 3
  %68 = load %struct.hostapd_radius_server*, %struct.hostapd_radius_server** %67, align 8
  %69 = icmp ne %struct.hostapd_radius_server* %68, null
  br i1 %69, label %70, label %112

70:                                               ; preds = %65
  store i32 0, i32* %9, align 4
  br label %71

71:                                               ; preds = %108, %70
  %72 = load i32, i32* %9, align 4
  %73 = load %struct.hostapd_radius_servers*, %struct.hostapd_radius_servers** %8, align 8
  %74 = getelementptr inbounds %struct.hostapd_radius_servers, %struct.hostapd_radius_servers* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = icmp slt i32 %72, %75
  br i1 %76, label %77, label %111

77:                                               ; preds = %71
  %78 = load %struct.hostapd_radius_servers*, %struct.hostapd_radius_servers** %8, align 8
  %79 = getelementptr inbounds %struct.hostapd_radius_servers, %struct.hostapd_radius_servers* %78, i32 0, i32 3
  %80 = load %struct.hostapd_radius_server*, %struct.hostapd_radius_server** %79, align 8
  %81 = load i32, i32* %9, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds %struct.hostapd_radius_server, %struct.hostapd_radius_server* %80, i64 %82
  store %struct.hostapd_radius_server* %83, %struct.hostapd_radius_server** %10, align 8
  %84 = load i8*, i8** %6, align 8
  %85 = load i32, i32* %11, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i8, i8* %84, i64 %86
  %88 = load i64, i64* %7, align 8
  %89 = load i32, i32* %11, align 4
  %90 = sext i32 %89 to i64
  %91 = sub i64 %88, %90
  %92 = load %struct.hostapd_radius_server*, %struct.hostapd_radius_server** %10, align 8
  %93 = load %struct.hostapd_radius_server*, %struct.hostapd_radius_server** %10, align 8
  %94 = load %struct.hostapd_radius_servers*, %struct.hostapd_radius_servers** %8, align 8
  %95 = getelementptr inbounds %struct.hostapd_radius_servers, %struct.hostapd_radius_servers* %94, i32 0, i32 2
  %96 = load %struct.hostapd_radius_server*, %struct.hostapd_radius_server** %95, align 8
  %97 = icmp eq %struct.hostapd_radius_server* %93, %96
  br i1 %97, label %98, label %100

98:                                               ; preds = %77
  %99 = load %struct.radius_client_data*, %struct.radius_client_data** %5, align 8
  br label %101

100:                                              ; preds = %77
  br label %101

101:                                              ; preds = %100, %98
  %102 = phi %struct.radius_client_data* [ %99, %98 ], [ null, %100 ]
  %103 = call i64 @radius_client_dump_acct_server(i8* %87, i64 %91, %struct.hostapd_radius_server* %92, %struct.radius_client_data* %102)
  %104 = load i32, i32* %11, align 4
  %105 = sext i32 %104 to i64
  %106 = add nsw i64 %105, %103
  %107 = trunc i64 %106 to i32
  store i32 %107, i32* %11, align 4
  br label %108

108:                                              ; preds = %101
  %109 = load i32, i32* %9, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %9, align 4
  br label %71

111:                                              ; preds = %71
  br label %112

112:                                              ; preds = %111, %65
  %113 = load i32, i32* %11, align 4
  store i32 %113, i32* %4, align 4
  br label %114

114:                                              ; preds = %112, %14
  %115 = load i32, i32* %4, align 4
  ret i32 %115
}

declare dso_local i64 @radius_client_dump_auth_server(i8*, i64, %struct.hostapd_radius_server*, %struct.radius_client_data*) #1

declare dso_local i64 @radius_client_dump_acct_server(i8*, i64, %struct.hostapd_radius_server*, %struct.radius_client_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
