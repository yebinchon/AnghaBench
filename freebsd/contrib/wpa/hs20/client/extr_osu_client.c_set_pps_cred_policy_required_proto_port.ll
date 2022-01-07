; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/hs20/client/extr_osu_client.c_set_pps_cred_policy_required_proto_port.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/hs20/client/extr_osu_client.c_set_pps_cred_policy_required_proto_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hs20_osu_client = type { i32, i32 }

@.str = private unnamed_addr constant [11 x i8] c"IPProtocol\00", align 1
@MSG_INFO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [64 x i8] c"Ignore RequiredProtoPortTuple without mandatory IPProtocol node\00", align 1
@.str.2 = private unnamed_addr constant [53 x i8] c"- Policy/RequiredProtoPortTuple/<X+>/IPProtocol = %s\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"PortNumber\00", align 1
@.str.4 = private unnamed_addr constant [53 x i8] c"- Policy/RequiredProtoPortTuple/<X+>/PortNumber = %s\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"%s:%s\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.7 = private unnamed_addr constant [15 x i8] c"req_conn_capab\00", align 1
@.str.8 = private unnamed_addr constant [29 x i8] c"Could not set req_conn_capab\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hs20_osu_client*, i32, i32*)* @set_pps_cred_policy_required_proto_port to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_pps_cred_policy_required_proto_port(%struct.hs20_osu_client* %0, i32 %1, i32* %2) #0 {
  %4 = alloca %struct.hs20_osu_client*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  store %struct.hs20_osu_client* %0, %struct.hs20_osu_client** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %12 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %4, align 8
  %13 = getelementptr inbounds %struct.hs20_osu_client, %struct.hs20_osu_client* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = load i32*, i32** %6, align 8
  %16 = call i32* @get_node(i32 %14, i32* %15, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  store i32* %16, i32** %7, align 8
  %17 = load i32*, i32** %7, align 8
  %18 = icmp eq i32* %17, null
  br i1 %18, label %19, label %22

19:                                               ; preds = %3
  %20 = load i32, i32* @MSG_INFO, align 4
  %21 = call i32 (i32, i8*, ...) @wpa_printf(i32 %20, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.1, i64 0, i64 0))
  br label %118

22:                                               ; preds = %3
  %23 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %4, align 8
  %24 = getelementptr inbounds %struct.hs20_osu_client, %struct.hs20_osu_client* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load i32*, i32** %7, align 8
  %27 = call i8* @xml_node_get_text(i32 %25, i32* %26)
  store i8* %27, i8** %8, align 8
  %28 = load i8*, i8** %8, align 8
  %29 = icmp eq i8* %28, null
  br i1 %29, label %30, label %31

30:                                               ; preds = %22
  br label %118

31:                                               ; preds = %22
  %32 = load i32, i32* @MSG_INFO, align 4
  %33 = load i8*, i8** %8, align 8
  %34 = call i32 (i32, i8*, ...) @wpa_printf(i32 %32, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.2, i64 0, i64 0), i8* %33)
  %35 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %4, align 8
  %36 = getelementptr inbounds %struct.hs20_osu_client, %struct.hs20_osu_client* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load i32*, i32** %6, align 8
  %39 = call i32* @get_node(i32 %37, i32* %38, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0))
  store i32* %39, i32** %7, align 8
  %40 = load i32*, i32** %7, align 8
  %41 = icmp ne i32* %40, null
  br i1 %41, label %42, label %48

42:                                               ; preds = %31
  %43 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %4, align 8
  %44 = getelementptr inbounds %struct.hs20_osu_client, %struct.hs20_osu_client* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load i32*, i32** %7, align 8
  %47 = call i8* @xml_node_get_text(i32 %45, i32* %46)
  br label %49

48:                                               ; preds = %31
  br label %49

49:                                               ; preds = %48, %42
  %50 = phi i8* [ %47, %42 ], [ null, %48 ]
  store i8* %50, i8** %9, align 8
  %51 = load i8*, i8** %9, align 8
  %52 = icmp ne i8* %51, null
  br i1 %52, label %53, label %80

53:                                               ; preds = %49
  %54 = load i32, i32* @MSG_INFO, align 4
  %55 = load i8*, i8** %9, align 8
  %56 = call i32 (i32, i8*, ...) @wpa_printf(i32 %54, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.4, i64 0, i64 0), i8* %55)
  %57 = load i8*, i8** %8, align 8
  %58 = call i32 @os_strlen(i8* %57)
  %59 = load i8*, i8** %9, align 8
  %60 = call i32 @os_strlen(i8* %59)
  %61 = add nsw i32 %58, %60
  %62 = add nsw i32 %61, 10
  %63 = sext i32 %62 to i64
  store i64 %63, i64* %11, align 8
  %64 = load i64, i64* %11, align 8
  %65 = call i8* @os_malloc(i64 %64)
  store i8* %65, i8** %10, align 8
  %66 = load i8*, i8** %10, align 8
  %67 = icmp ne i8* %66, null
  br i1 %67, label %68, label %74

68:                                               ; preds = %53
  %69 = load i8*, i8** %10, align 8
  %70 = load i64, i64* %11, align 8
  %71 = load i8*, i8** %8, align 8
  %72 = load i8*, i8** %9, align 8
  %73 = call i32 (i8*, i64, i8*, i8*, ...) @os_snprintf(i8* %69, i64 %70, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i8* %71, i8* %72)
  br label %74

74:                                               ; preds = %68, %53
  %75 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %4, align 8
  %76 = getelementptr inbounds %struct.hs20_osu_client, %struct.hs20_osu_client* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = load i8*, i8** %9, align 8
  %79 = call i32 @xml_node_get_text_free(i32 %77, i8* %78)
  br label %95

80:                                               ; preds = %49
  %81 = load i8*, i8** %8, align 8
  %82 = call i32 @os_strlen(i8* %81)
  %83 = add nsw i32 %82, 10
  %84 = sext i32 %83 to i64
  store i64 %84, i64* %11, align 8
  %85 = load i64, i64* %11, align 8
  %86 = call i8* @os_malloc(i64 %85)
  store i8* %86, i8** %10, align 8
  %87 = load i8*, i8** %10, align 8
  %88 = icmp ne i8* %87, null
  br i1 %88, label %89, label %94

89:                                               ; preds = %80
  %90 = load i8*, i8** %10, align 8
  %91 = load i64, i64* %11, align 8
  %92 = load i8*, i8** %8, align 8
  %93 = call i32 (i8*, i64, i8*, i8*, ...) @os_snprintf(i8* %90, i64 %91, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), i8* %92)
  br label %94

94:                                               ; preds = %89, %80
  br label %95

95:                                               ; preds = %94, %74
  %96 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %4, align 8
  %97 = getelementptr inbounds %struct.hs20_osu_client, %struct.hs20_osu_client* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = load i8*, i8** %8, align 8
  %100 = call i32 @xml_node_get_text_free(i32 %98, i8* %99)
  %101 = load i8*, i8** %10, align 8
  %102 = icmp eq i8* %101, null
  br i1 %102, label %103, label %104

103:                                              ; preds = %95
  br label %118

104:                                              ; preds = %95
  %105 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %4, align 8
  %106 = getelementptr inbounds %struct.hs20_osu_client, %struct.hs20_osu_client* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = load i32, i32* %5, align 4
  %109 = load i8*, i8** %10, align 8
  %110 = call i64 @set_cred(i32 %107, i32 %108, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i64 0, i64 0), i8* %109)
  %111 = icmp slt i64 %110, 0
  br i1 %111, label %112, label %115

112:                                              ; preds = %104
  %113 = load i32, i32* @MSG_INFO, align 4
  %114 = call i32 (i32, i8*, ...) @wpa_printf(i32 %113, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.8, i64 0, i64 0))
  br label %115

115:                                              ; preds = %112, %104
  %116 = load i8*, i8** %10, align 8
  %117 = call i32 @os_free(i8* %116)
  br label %118

118:                                              ; preds = %115, %103, %30, %19
  ret void
}

declare dso_local i32* @get_node(i32, i32*, i8*) #1

declare dso_local i32 @wpa_printf(i32, i8*, ...) #1

declare dso_local i8* @xml_node_get_text(i32, i32*) #1

declare dso_local i32 @os_strlen(i8*) #1

declare dso_local i8* @os_malloc(i64) #1

declare dso_local i32 @os_snprintf(i8*, i64, i8*, i8*, ...) #1

declare dso_local i32 @xml_node_get_text_free(i32, i8*) #1

declare dso_local i64 @set_cred(i32, i32, i8*, i8*) #1

declare dso_local i32 @os_free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
