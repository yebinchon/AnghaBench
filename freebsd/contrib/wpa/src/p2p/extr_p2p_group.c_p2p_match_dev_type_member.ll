; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/p2p/extr_p2p_group.c_p2p_match_dev_type_member.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/p2p/extr_p2p_group.c_p2p_match_dev_type_member.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.p2p_group_member = type { i32* }
%struct.wpabuf = type { i32 }
%struct.wps_parse_attr = type { i64, i32 }

@ETH_ALEN = common dso_local global i32 0, align 4
@WPS_DEV_TYPE_LEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.p2p_group_member*, %struct.wpabuf*)* @p2p_match_dev_type_member to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @p2p_match_dev_type_member(%struct.p2p_group_member* %0, %struct.wpabuf* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.p2p_group_member*, align 8
  %5 = alloca %struct.wpabuf*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.wps_parse_attr, align 8
  %9 = alloca i32, align 4
  store %struct.p2p_group_member* %0, %struct.p2p_group_member** %4, align 8
  store %struct.wpabuf* %1, %struct.wpabuf** %5, align 8
  %10 = load %struct.p2p_group_member*, %struct.p2p_group_member** %4, align 8
  %11 = getelementptr inbounds %struct.p2p_group_member, %struct.p2p_group_member* %10, i32 0, i32 0
  %12 = load i32*, i32** %11, align 8
  %13 = icmp eq i32* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %2
  %15 = load %struct.wpabuf*, %struct.wpabuf** %5, align 8
  %16 = icmp eq %struct.wpabuf* %15, null
  br i1 %16, label %17, label %18

17:                                               ; preds = %14, %2
  store i32 0, i32* %3, align 4
  br label %109

18:                                               ; preds = %14
  %19 = load %struct.p2p_group_member*, %struct.p2p_group_member** %4, align 8
  %20 = getelementptr inbounds %struct.p2p_group_member, %struct.p2p_group_member* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = call i32* @wpabuf_head(i32* %21)
  store i32* %22, i32** %6, align 8
  %23 = load i32*, i32** %6, align 8
  %24 = load %struct.p2p_group_member*, %struct.p2p_group_member** %4, align 8
  %25 = getelementptr inbounds %struct.p2p_group_member, %struct.p2p_group_member* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = call i32 @wpabuf_len(i32* %26)
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i32, i32* %23, i64 %28
  store i32* %29, i32** %7, align 8
  %30 = load i32, i32* @ETH_ALEN, align 4
  %31 = mul nsw i32 2, %30
  %32 = add nsw i32 1, %31
  %33 = add nsw i32 %32, 1
  %34 = add nsw i32 %33, 2
  %35 = load i32*, i32** %6, align 8
  %36 = sext i32 %34 to i64
  %37 = getelementptr inbounds i32, i32* %35, i64 %36
  store i32* %37, i32** %6, align 8
  %38 = load i32*, i32** %7, align 8
  %39 = load i32*, i32** %6, align 8
  %40 = ptrtoint i32* %38 to i64
  %41 = ptrtoint i32* %39 to i64
  %42 = sub i64 %40, %41
  %43 = sdiv exact i64 %42, 4
  %44 = load i32, i32* @WPS_DEV_TYPE_LEN, align 4
  %45 = add nsw i32 %44, 1
  %46 = sext i32 %45 to i64
  %47 = icmp slt i64 %43, %46
  br i1 %47, label %48, label %49

48:                                               ; preds = %18
  store i32 0, i32* %3, align 4
  br label %109

49:                                               ; preds = %18
  %50 = load %struct.wpabuf*, %struct.wpabuf** %5, align 8
  %51 = call i64 @wps_parse_msg(%struct.wpabuf* %50, %struct.wps_parse_attr* %8)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %49
  store i32 1, i32* %3, align 4
  br label %109

54:                                               ; preds = %49
  %55 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %8, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = icmp eq i64 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %54
  store i32 1, i32* %3, align 4
  br label %109

59:                                               ; preds = %54
  %60 = load i32*, i32** %6, align 8
  %61 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %8, i32 0, i32 1
  %62 = load i32, i32* %61, align 8
  %63 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %8, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = call i64 @dev_type_list_match(i32* %60, i32 %62, i64 %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %59
  store i32 1, i32* %3, align 4
  br label %109

68:                                               ; preds = %59
  %69 = load i32, i32* @WPS_DEV_TYPE_LEN, align 4
  %70 = load i32*, i32** %6, align 8
  %71 = sext i32 %69 to i64
  %72 = getelementptr inbounds i32, i32* %70, i64 %71
  store i32* %72, i32** %6, align 8
  %73 = load i32*, i32** %6, align 8
  %74 = getelementptr inbounds i32, i32* %73, i32 1
  store i32* %74, i32** %6, align 8
  %75 = load i32, i32* %73, align 4
  store i32 %75, i32* %9, align 4
  %76 = load i32*, i32** %7, align 8
  %77 = load i32*, i32** %6, align 8
  %78 = ptrtoint i32* %76 to i64
  %79 = ptrtoint i32* %77 to i64
  %80 = sub i64 %78, %79
  %81 = sdiv exact i64 %80, 4
  %82 = load i32, i32* %9, align 4
  %83 = load i32, i32* @WPS_DEV_TYPE_LEN, align 4
  %84 = mul nsw i32 %82, %83
  %85 = sext i32 %84 to i64
  %86 = icmp slt i64 %81, %85
  br i1 %86, label %87, label %88

87:                                               ; preds = %68
  store i32 0, i32* %3, align 4
  br label %109

88:                                               ; preds = %68
  br label %89

89:                                               ; preds = %103, %88
  %90 = load i32, i32* %9, align 4
  %91 = icmp sgt i32 %90, 0
  br i1 %91, label %92, label %108

92:                                               ; preds = %89
  %93 = load i32, i32* %9, align 4
  %94 = add nsw i32 %93, -1
  store i32 %94, i32* %9, align 4
  %95 = load i32*, i32** %6, align 8
  %96 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %8, i32 0, i32 1
  %97 = load i32, i32* %96, align 8
  %98 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %8, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = call i64 @dev_type_list_match(i32* %95, i32 %97, i64 %99)
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %103

102:                                              ; preds = %92
  store i32 1, i32* %3, align 4
  br label %109

103:                                              ; preds = %92
  %104 = load i32, i32* @WPS_DEV_TYPE_LEN, align 4
  %105 = load i32*, i32** %6, align 8
  %106 = sext i32 %104 to i64
  %107 = getelementptr inbounds i32, i32* %105, i64 %106
  store i32* %107, i32** %6, align 8
  br label %89

108:                                              ; preds = %89
  store i32 0, i32* %3, align 4
  br label %109

109:                                              ; preds = %108, %102, %87, %67, %58, %53, %48, %17
  %110 = load i32, i32* %3, align 4
  ret i32 %110
}

declare dso_local i32* @wpabuf_head(i32*) #1

declare dso_local i32 @wpabuf_len(i32*) #1

declare dso_local i64 @wps_parse_msg(%struct.wpabuf*, %struct.wps_parse_attr*) #1

declare dso_local i64 @dev_type_list_match(i32*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
