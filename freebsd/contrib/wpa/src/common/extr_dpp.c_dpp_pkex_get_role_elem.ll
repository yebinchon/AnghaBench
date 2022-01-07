; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/common/extr_dpp.c_dpp_pkex_get_role_elem.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/common/extr_dpp.c_dpp_pkex_get_role_elem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dpp_curve_params = type { i64, i32, i32 }

@pkex_init_x_p256 = common dso_local global i32* null, align 8
@pkex_resp_x_p256 = common dso_local global i32* null, align 8
@pkex_init_y_p256 = common dso_local global i32* null, align 8
@pkex_resp_y_p256 = common dso_local global i32* null, align 8
@pkex_init_x_p384 = common dso_local global i32* null, align 8
@pkex_resp_x_p384 = common dso_local global i32* null, align 8
@pkex_init_y_p384 = common dso_local global i32* null, align 8
@pkex_resp_y_p384 = common dso_local global i32* null, align 8
@pkex_init_x_p521 = common dso_local global i32* null, align 8
@pkex_resp_x_p521 = common dso_local global i32* null, align 8
@pkex_init_y_p521 = common dso_local global i32* null, align 8
@pkex_resp_y_p521 = common dso_local global i32* null, align 8
@pkex_init_x_bp_p256r1 = common dso_local global i32* null, align 8
@pkex_resp_x_bp_p256r1 = common dso_local global i32* null, align 8
@pkex_init_y_bp_p256r1 = common dso_local global i32* null, align 8
@pkex_resp_y_bp_p256r1 = common dso_local global i32* null, align 8
@pkex_init_x_bp_p384r1 = common dso_local global i32* null, align 8
@pkex_resp_x_bp_p384r1 = common dso_local global i32* null, align 8
@pkex_init_y_bp_p384r1 = common dso_local global i32* null, align 8
@pkex_resp_y_bp_p384r1 = common dso_local global i32* null, align 8
@pkex_init_x_bp_p512r1 = common dso_local global i32* null, align 8
@pkex_resp_x_bp_p512r1 = common dso_local global i32* null, align 8
@pkex_init_y_bp_p512r1 = common dso_local global i32* null, align 8
@pkex_resp_y_bp_p512r1 = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.dpp_curve_params*, i32)* @dpp_pkex_get_role_elem to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @dpp_pkex_get_role_elem(%struct.dpp_curve_params* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.dpp_curve_params*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  store %struct.dpp_curve_params* %0, %struct.dpp_curve_params** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load %struct.dpp_curve_params*, %struct.dpp_curve_params** %4, align 8
  %12 = getelementptr inbounds %struct.dpp_curve_params, %struct.dpp_curve_params* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  store i64 %13, i64* %7, align 8
  %14 = load %struct.dpp_curve_params*, %struct.dpp_curve_params** %4, align 8
  %15 = getelementptr inbounds %struct.dpp_curve_params, %struct.dpp_curve_params* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  switch i32 %16, label %119 [
    i32 19, label %17
    i32 20, label %34
    i32 21, label %51
    i32 28, label %68
    i32 29, label %85
    i32 30, label %102
  ]

17:                                               ; preds = %2
  %18 = load i32, i32* %5, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %17
  %21 = load i32*, i32** @pkex_init_x_p256, align 8
  br label %24

22:                                               ; preds = %17
  %23 = load i32*, i32** @pkex_resp_x_p256, align 8
  br label %24

24:                                               ; preds = %22, %20
  %25 = phi i32* [ %21, %20 ], [ %23, %22 ]
  store i32* %25, i32** %8, align 8
  %26 = load i32, i32* %5, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %24
  %29 = load i32*, i32** @pkex_init_y_p256, align 8
  br label %32

30:                                               ; preds = %24
  %31 = load i32*, i32** @pkex_resp_y_p256, align 8
  br label %32

32:                                               ; preds = %30, %28
  %33 = phi i32* [ %29, %28 ], [ %31, %30 ]
  store i32* %33, i32** %9, align 8
  br label %120

34:                                               ; preds = %2
  %35 = load i32, i32* %5, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %34
  %38 = load i32*, i32** @pkex_init_x_p384, align 8
  br label %41

39:                                               ; preds = %34
  %40 = load i32*, i32** @pkex_resp_x_p384, align 8
  br label %41

41:                                               ; preds = %39, %37
  %42 = phi i32* [ %38, %37 ], [ %40, %39 ]
  store i32* %42, i32** %8, align 8
  %43 = load i32, i32* %5, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %41
  %46 = load i32*, i32** @pkex_init_y_p384, align 8
  br label %49

47:                                               ; preds = %41
  %48 = load i32*, i32** @pkex_resp_y_p384, align 8
  br label %49

49:                                               ; preds = %47, %45
  %50 = phi i32* [ %46, %45 ], [ %48, %47 ]
  store i32* %50, i32** %9, align 8
  br label %120

51:                                               ; preds = %2
  %52 = load i32, i32* %5, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %51
  %55 = load i32*, i32** @pkex_init_x_p521, align 8
  br label %58

56:                                               ; preds = %51
  %57 = load i32*, i32** @pkex_resp_x_p521, align 8
  br label %58

58:                                               ; preds = %56, %54
  %59 = phi i32* [ %55, %54 ], [ %57, %56 ]
  store i32* %59, i32** %8, align 8
  %60 = load i32, i32* %5, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %58
  %63 = load i32*, i32** @pkex_init_y_p521, align 8
  br label %66

64:                                               ; preds = %58
  %65 = load i32*, i32** @pkex_resp_y_p521, align 8
  br label %66

66:                                               ; preds = %64, %62
  %67 = phi i32* [ %63, %62 ], [ %65, %64 ]
  store i32* %67, i32** %9, align 8
  br label %120

68:                                               ; preds = %2
  %69 = load i32, i32* %5, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %68
  %72 = load i32*, i32** @pkex_init_x_bp_p256r1, align 8
  br label %75

73:                                               ; preds = %68
  %74 = load i32*, i32** @pkex_resp_x_bp_p256r1, align 8
  br label %75

75:                                               ; preds = %73, %71
  %76 = phi i32* [ %72, %71 ], [ %74, %73 ]
  store i32* %76, i32** %8, align 8
  %77 = load i32, i32* %5, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %81

79:                                               ; preds = %75
  %80 = load i32*, i32** @pkex_init_y_bp_p256r1, align 8
  br label %83

81:                                               ; preds = %75
  %82 = load i32*, i32** @pkex_resp_y_bp_p256r1, align 8
  br label %83

83:                                               ; preds = %81, %79
  %84 = phi i32* [ %80, %79 ], [ %82, %81 ]
  store i32* %84, i32** %9, align 8
  br label %120

85:                                               ; preds = %2
  %86 = load i32, i32* %5, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %90

88:                                               ; preds = %85
  %89 = load i32*, i32** @pkex_init_x_bp_p384r1, align 8
  br label %92

90:                                               ; preds = %85
  %91 = load i32*, i32** @pkex_resp_x_bp_p384r1, align 8
  br label %92

92:                                               ; preds = %90, %88
  %93 = phi i32* [ %89, %88 ], [ %91, %90 ]
  store i32* %93, i32** %8, align 8
  %94 = load i32, i32* %5, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %98

96:                                               ; preds = %92
  %97 = load i32*, i32** @pkex_init_y_bp_p384r1, align 8
  br label %100

98:                                               ; preds = %92
  %99 = load i32*, i32** @pkex_resp_y_bp_p384r1, align 8
  br label %100

100:                                              ; preds = %98, %96
  %101 = phi i32* [ %97, %96 ], [ %99, %98 ]
  store i32* %101, i32** %9, align 8
  br label %120

102:                                              ; preds = %2
  %103 = load i32, i32* %5, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %107

105:                                              ; preds = %102
  %106 = load i32*, i32** @pkex_init_x_bp_p512r1, align 8
  br label %109

107:                                              ; preds = %102
  %108 = load i32*, i32** @pkex_resp_x_bp_p512r1, align 8
  br label %109

109:                                              ; preds = %107, %105
  %110 = phi i32* [ %106, %105 ], [ %108, %107 ]
  store i32* %110, i32** %8, align 8
  %111 = load i32, i32* %5, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %115

113:                                              ; preds = %109
  %114 = load i32*, i32** @pkex_init_y_bp_p512r1, align 8
  br label %117

115:                                              ; preds = %109
  %116 = load i32*, i32** @pkex_resp_y_bp_p512r1, align 8
  br label %117

117:                                              ; preds = %115, %113
  %118 = phi i32* [ %114, %113 ], [ %116, %115 ]
  store i32* %118, i32** %9, align 8
  br label %120

119:                                              ; preds = %2
  store i32* null, i32** %3, align 8
  br label %138

120:                                              ; preds = %117, %100, %83, %66, %49, %32
  %121 = load %struct.dpp_curve_params*, %struct.dpp_curve_params** %4, align 8
  %122 = getelementptr inbounds %struct.dpp_curve_params, %struct.dpp_curve_params* %121, i32 0, i32 2
  %123 = load i32, i32* %122, align 4
  %124 = call i32 @OBJ_txt2nid(i32 %123)
  %125 = call i32* @EC_GROUP_new_by_curve_name(i32 %124)
  store i32* %125, i32** %6, align 8
  %126 = load i32*, i32** %6, align 8
  %127 = icmp ne i32* %126, null
  br i1 %127, label %129, label %128

128:                                              ; preds = %120
  store i32* null, i32** %3, align 8
  br label %138

129:                                              ; preds = %120
  %130 = load i32*, i32** %6, align 8
  %131 = load i32*, i32** %8, align 8
  %132 = load i32*, i32** %9, align 8
  %133 = load i64, i64* %7, align 8
  %134 = call i32* @dpp_set_pubkey_point_group(i32* %130, i32* %131, i32* %132, i64 %133)
  store i32* %134, i32** %10, align 8
  %135 = load i32*, i32** %6, align 8
  %136 = call i32 @EC_GROUP_free(i32* %135)
  %137 = load i32*, i32** %10, align 8
  store i32* %137, i32** %3, align 8
  br label %138

138:                                              ; preds = %129, %128, %119
  %139 = load i32*, i32** %3, align 8
  ret i32* %139
}

declare dso_local i32* @EC_GROUP_new_by_curve_name(i32) #1

declare dso_local i32 @OBJ_txt2nid(i32) #1

declare dso_local i32* @dpp_set_pubkey_point_group(i32*, i32*, i32*, i64) #1

declare dso_local i32 @EC_GROUP_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
