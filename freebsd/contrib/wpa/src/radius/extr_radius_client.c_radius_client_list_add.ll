; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/radius/extr_radius_client.c_radius_client_list_add.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/radius/extr_radius_client.c_radius_client_list_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radius_client_data = type { i64, %struct.radius_msg_list* }
%struct.radius_msg_list = type { i64, i32, i32, i32, %struct.radius_msg_list*, i64, i64, %struct.TYPE_2__, i32*, i32, %struct.radius_msg*, i32 }
%struct.TYPE_2__ = type { i64 }
%struct.radius_msg = type { i32 }

@MSG_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"RADIUS: Failed to add packet into retransmit list\00", align 1
@ETH_ALEN = common dso_local global i32 0, align 4
@RADIUS_CLIENT_FIRST_WAIT = common dso_local global i32 0, align 4
@RADIUS_CLIENT_MAX_WAIT = common dso_local global i32 0, align 4
@RADIUS_CLIENT_MAX_ENTRIES = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [74 x i8] c"RADIUS: Removing the oldest un-ACKed packet due to retransmit list limits\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.radius_client_data*, %struct.radius_msg*, i32, i32*, i64, i32*)* @radius_client_list_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @radius_client_list_add(%struct.radius_client_data* %0, %struct.radius_msg* %1, i32 %2, i32* %3, i64 %4, i32* %5) #0 {
  %7 = alloca %struct.radius_client_data*, align 8
  %8 = alloca %struct.radius_msg*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32*, align 8
  %13 = alloca %struct.radius_msg_list*, align 8
  %14 = alloca %struct.radius_msg_list*, align 8
  store %struct.radius_client_data* %0, %struct.radius_client_data** %7, align 8
  store %struct.radius_msg* %1, %struct.radius_msg** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store i64 %4, i64* %11, align 8
  store i32* %5, i32** %12, align 8
  %15 = call i64 (...) @eloop_terminated()
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %6
  %18 = load %struct.radius_msg*, %struct.radius_msg** %8, align 8
  %19 = call i32 @radius_msg_free(%struct.radius_msg* %18)
  br label %129

20:                                               ; preds = %6
  %21 = call %struct.radius_msg_list* @os_zalloc(i32 88)
  store %struct.radius_msg_list* %21, %struct.radius_msg_list** %13, align 8
  %22 = load %struct.radius_msg_list*, %struct.radius_msg_list** %13, align 8
  %23 = icmp eq %struct.radius_msg_list* %22, null
  br i1 %23, label %24, label %29

24:                                               ; preds = %20
  %25 = load i32, i32* @MSG_INFO, align 4
  %26 = call i32 @wpa_printf(i32 %25, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0))
  %27 = load %struct.radius_msg*, %struct.radius_msg** %8, align 8
  %28 = call i32 @radius_msg_free(%struct.radius_msg* %27)
  br label %129

29:                                               ; preds = %20
  %30 = load i32*, i32** %12, align 8
  %31 = icmp ne i32* %30, null
  br i1 %31, label %32, label %39

32:                                               ; preds = %29
  %33 = load %struct.radius_msg_list*, %struct.radius_msg_list** %13, align 8
  %34 = getelementptr inbounds %struct.radius_msg_list, %struct.radius_msg_list* %33, i32 0, i32 11
  %35 = load i32, i32* %34, align 8
  %36 = load i32*, i32** %12, align 8
  %37 = load i32, i32* @ETH_ALEN, align 4
  %38 = call i32 @os_memcpy(i32 %35, i32* %36, i32 %37)
  br label %39

39:                                               ; preds = %32, %29
  %40 = load %struct.radius_msg*, %struct.radius_msg** %8, align 8
  %41 = load %struct.radius_msg_list*, %struct.radius_msg_list** %13, align 8
  %42 = getelementptr inbounds %struct.radius_msg_list, %struct.radius_msg_list* %41, i32 0, i32 10
  store %struct.radius_msg* %40, %struct.radius_msg** %42, align 8
  %43 = load i32, i32* %9, align 4
  %44 = load %struct.radius_msg_list*, %struct.radius_msg_list** %13, align 8
  %45 = getelementptr inbounds %struct.radius_msg_list, %struct.radius_msg_list* %44, i32 0, i32 9
  store i32 %43, i32* %45, align 8
  %46 = load i32*, i32** %10, align 8
  %47 = load %struct.radius_msg_list*, %struct.radius_msg_list** %13, align 8
  %48 = getelementptr inbounds %struct.radius_msg_list, %struct.radius_msg_list* %47, i32 0, i32 8
  store i32* %46, i32** %48, align 8
  %49 = load i64, i64* %11, align 8
  %50 = load %struct.radius_msg_list*, %struct.radius_msg_list** %13, align 8
  %51 = getelementptr inbounds %struct.radius_msg_list, %struct.radius_msg_list* %50, i32 0, i32 0
  store i64 %49, i64* %51, align 8
  %52 = load %struct.radius_msg_list*, %struct.radius_msg_list** %13, align 8
  %53 = getelementptr inbounds %struct.radius_msg_list, %struct.radius_msg_list* %52, i32 0, i32 7
  %54 = call i32 @os_get_reltime(%struct.TYPE_2__* %53)
  %55 = load %struct.radius_msg_list*, %struct.radius_msg_list** %13, align 8
  %56 = getelementptr inbounds %struct.radius_msg_list, %struct.radius_msg_list* %55, i32 0, i32 7
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load %struct.radius_msg_list*, %struct.radius_msg_list** %13, align 8
  %60 = getelementptr inbounds %struct.radius_msg_list, %struct.radius_msg_list* %59, i32 0, i32 5
  store i64 %58, i64* %60, align 8
  %61 = load %struct.radius_msg_list*, %struct.radius_msg_list** %13, align 8
  %62 = getelementptr inbounds %struct.radius_msg_list, %struct.radius_msg_list* %61, i32 0, i32 5
  %63 = load i64, i64* %62, align 8
  %64 = load i32, i32* @RADIUS_CLIENT_FIRST_WAIT, align 4
  %65 = sext i32 %64 to i64
  %66 = add nsw i64 %63, %65
  %67 = load %struct.radius_msg_list*, %struct.radius_msg_list** %13, align 8
  %68 = getelementptr inbounds %struct.radius_msg_list, %struct.radius_msg_list* %67, i32 0, i32 6
  store i64 %66, i64* %68, align 8
  %69 = load %struct.radius_msg_list*, %struct.radius_msg_list** %13, align 8
  %70 = getelementptr inbounds %struct.radius_msg_list, %struct.radius_msg_list* %69, i32 0, i32 1
  store i32 1, i32* %70, align 8
  %71 = load %struct.radius_msg_list*, %struct.radius_msg_list** %13, align 8
  %72 = getelementptr inbounds %struct.radius_msg_list, %struct.radius_msg_list* %71, i32 0, i32 2
  store i32 1, i32* %72, align 4
  %73 = load i32, i32* @RADIUS_CLIENT_FIRST_WAIT, align 4
  %74 = mul nsw i32 %73, 2
  %75 = load %struct.radius_msg_list*, %struct.radius_msg_list** %13, align 8
  %76 = getelementptr inbounds %struct.radius_msg_list, %struct.radius_msg_list* %75, i32 0, i32 3
  store i32 %74, i32* %76, align 8
  %77 = load %struct.radius_msg_list*, %struct.radius_msg_list** %13, align 8
  %78 = getelementptr inbounds %struct.radius_msg_list, %struct.radius_msg_list* %77, i32 0, i32 3
  %79 = load i32, i32* %78, align 8
  %80 = load i32, i32* @RADIUS_CLIENT_MAX_WAIT, align 4
  %81 = icmp sgt i32 %79, %80
  br i1 %81, label %82, label %86

82:                                               ; preds = %39
  %83 = load i32, i32* @RADIUS_CLIENT_MAX_WAIT, align 4
  %84 = load %struct.radius_msg_list*, %struct.radius_msg_list** %13, align 8
  %85 = getelementptr inbounds %struct.radius_msg_list, %struct.radius_msg_list* %84, i32 0, i32 3
  store i32 %83, i32* %85, align 8
  br label %86

86:                                               ; preds = %82, %39
  %87 = load %struct.radius_client_data*, %struct.radius_client_data** %7, align 8
  %88 = getelementptr inbounds %struct.radius_client_data, %struct.radius_client_data* %87, i32 0, i32 1
  %89 = load %struct.radius_msg_list*, %struct.radius_msg_list** %88, align 8
  %90 = load %struct.radius_msg_list*, %struct.radius_msg_list** %13, align 8
  %91 = getelementptr inbounds %struct.radius_msg_list, %struct.radius_msg_list* %90, i32 0, i32 4
  store %struct.radius_msg_list* %89, %struct.radius_msg_list** %91, align 8
  %92 = load %struct.radius_msg_list*, %struct.radius_msg_list** %13, align 8
  %93 = load %struct.radius_client_data*, %struct.radius_client_data** %7, align 8
  %94 = getelementptr inbounds %struct.radius_client_data, %struct.radius_client_data* %93, i32 0, i32 1
  store %struct.radius_msg_list* %92, %struct.radius_msg_list** %94, align 8
  %95 = load %struct.radius_client_data*, %struct.radius_client_data** %7, align 8
  %96 = call i32 @radius_client_update_timeout(%struct.radius_client_data* %95)
  %97 = load %struct.radius_client_data*, %struct.radius_client_data** %7, align 8
  %98 = getelementptr inbounds %struct.radius_client_data, %struct.radius_client_data* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = load i64, i64* @RADIUS_CLIENT_MAX_ENTRIES, align 8
  %101 = icmp sge i64 %99, %100
  br i1 %101, label %102, label %124

102:                                              ; preds = %86
  %103 = load i32, i32* @MSG_INFO, align 4
  %104 = call i32 @wpa_printf(i32 %103, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.1, i64 0, i64 0))
  store %struct.radius_msg_list* null, %struct.radius_msg_list** %14, align 8
  br label %105

105:                                              ; preds = %110, %102
  %106 = load %struct.radius_msg_list*, %struct.radius_msg_list** %13, align 8
  %107 = getelementptr inbounds %struct.radius_msg_list, %struct.radius_msg_list* %106, i32 0, i32 4
  %108 = load %struct.radius_msg_list*, %struct.radius_msg_list** %107, align 8
  %109 = icmp ne %struct.radius_msg_list* %108, null
  br i1 %109, label %110, label %115

110:                                              ; preds = %105
  %111 = load %struct.radius_msg_list*, %struct.radius_msg_list** %13, align 8
  store %struct.radius_msg_list* %111, %struct.radius_msg_list** %14, align 8
  %112 = load %struct.radius_msg_list*, %struct.radius_msg_list** %13, align 8
  %113 = getelementptr inbounds %struct.radius_msg_list, %struct.radius_msg_list* %112, i32 0, i32 4
  %114 = load %struct.radius_msg_list*, %struct.radius_msg_list** %113, align 8
  store %struct.radius_msg_list* %114, %struct.radius_msg_list** %13, align 8
  br label %105

115:                                              ; preds = %105
  %116 = load %struct.radius_msg_list*, %struct.radius_msg_list** %14, align 8
  %117 = icmp ne %struct.radius_msg_list* %116, null
  br i1 %117, label %118, label %123

118:                                              ; preds = %115
  %119 = load %struct.radius_msg_list*, %struct.radius_msg_list** %14, align 8
  %120 = getelementptr inbounds %struct.radius_msg_list, %struct.radius_msg_list* %119, i32 0, i32 4
  store %struct.radius_msg_list* null, %struct.radius_msg_list** %120, align 8
  %121 = load %struct.radius_msg_list*, %struct.radius_msg_list** %13, align 8
  %122 = call i32 @radius_client_msg_free(%struct.radius_msg_list* %121)
  br label %123

123:                                              ; preds = %118, %115
  br label %129

124:                                              ; preds = %86
  %125 = load %struct.radius_client_data*, %struct.radius_client_data** %7, align 8
  %126 = getelementptr inbounds %struct.radius_client_data, %struct.radius_client_data* %125, i32 0, i32 0
  %127 = load i64, i64* %126, align 8
  %128 = add nsw i64 %127, 1
  store i64 %128, i64* %126, align 8
  br label %129

129:                                              ; preds = %17, %24, %124, %123
  ret void
}

declare dso_local i64 @eloop_terminated(...) #1

declare dso_local i32 @radius_msg_free(%struct.radius_msg*) #1

declare dso_local %struct.radius_msg_list* @os_zalloc(i32) #1

declare dso_local i32 @wpa_printf(i32, i8*) #1

declare dso_local i32 @os_memcpy(i32, i32*, i32) #1

declare dso_local i32 @os_get_reltime(%struct.TYPE_2__*) #1

declare dso_local i32 @radius_client_update_timeout(%struct.radius_client_data*) #1

declare dso_local i32 @radius_client_msg_free(%struct.radius_msg_list*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
