; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libgssapi/extr_gss_inquire_context.c_gss_inquire_context.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libgssapi/extr_gss_inquire_context.c_gss_inquire_context.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._gss_context = type { i32, %struct._gss_mech_switch* }
%struct._gss_mech_switch = type { i64 (i64*, i32, i64*, i64*, i64*, i32*, i64*, i32*, i32*)*, i32 (i64*, i64*)* }
%struct._gss_name = type { i32 }

@GSS_C_NO_NAME = common dso_local global i64 0, align 8
@GSS_C_NO_OID = common dso_local global i32 0, align 4
@GSS_S_COMPLETE = common dso_local global i64 0, align 8
@GSS_S_FAILURE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @gss_inquire_context(i64* %0, i64 %1, i64* %2, i64* %3, i64* %4, i32* %5, i64* %6, i32* %7, i32* %8) #0 {
  %10 = alloca i64, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64*, align 8
  %14 = alloca i64*, align 8
  %15 = alloca i64*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i64*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i64, align 8
  %21 = alloca %struct._gss_context*, align 8
  %22 = alloca %struct._gss_mech_switch*, align 8
  %23 = alloca %struct._gss_name*, align 8
  %24 = alloca i64, align 8
  %25 = alloca i64, align 8
  store i64* %0, i64** %11, align 8
  store i64 %1, i64* %12, align 8
  store i64* %2, i64** %13, align 8
  store i64* %3, i64** %14, align 8
  store i64* %4, i64** %15, align 8
  store i32* %5, i32** %16, align 8
  store i64* %6, i64** %17, align 8
  store i32* %7, i32** %18, align 8
  store i32* %8, i32** %19, align 8
  %26 = load i64, i64* %12, align 8
  %27 = inttoptr i64 %26 to %struct._gss_context*
  store %struct._gss_context* %27, %struct._gss_context** %21, align 8
  %28 = load %struct._gss_context*, %struct._gss_context** %21, align 8
  %29 = getelementptr inbounds %struct._gss_context, %struct._gss_context* %28, i32 0, i32 1
  %30 = load %struct._gss_mech_switch*, %struct._gss_mech_switch** %29, align 8
  store %struct._gss_mech_switch* %30, %struct._gss_mech_switch** %22, align 8
  %31 = load i32*, i32** %18, align 8
  %32 = icmp ne i32* %31, null
  br i1 %32, label %33, label %35

33:                                               ; preds = %9
  %34 = load i32*, i32** %18, align 8
  store i32 0, i32* %34, align 4
  br label %35

35:                                               ; preds = %33, %9
  %36 = load i32*, i32** %19, align 8
  %37 = icmp ne i32* %36, null
  br i1 %37, label %38, label %40

38:                                               ; preds = %35
  %39 = load i32*, i32** %19, align 8
  store i32 0, i32* %39, align 4
  br label %40

40:                                               ; preds = %38, %35
  %41 = load i64*, i64** %15, align 8
  %42 = icmp ne i64* %41, null
  br i1 %42, label %43, label %45

43:                                               ; preds = %40
  %44 = load i64*, i64** %15, align 8
  store i64 0, i64* %44, align 8
  br label %45

45:                                               ; preds = %43, %40
  %46 = load i64*, i64** %13, align 8
  %47 = icmp ne i64* %46, null
  br i1 %47, label %48, label %51

48:                                               ; preds = %45
  %49 = load i64, i64* @GSS_C_NO_NAME, align 8
  %50 = load i64*, i64** %13, align 8
  store i64 %49, i64* %50, align 8
  br label %51

51:                                               ; preds = %48, %45
  %52 = load i64*, i64** %14, align 8
  %53 = icmp ne i64* %52, null
  br i1 %53, label %54, label %57

54:                                               ; preds = %51
  %55 = load i64, i64* @GSS_C_NO_NAME, align 8
  %56 = load i64*, i64** %14, align 8
  store i64 %55, i64* %56, align 8
  br label %57

57:                                               ; preds = %54, %51
  %58 = load i32*, i32** %16, align 8
  %59 = icmp ne i32* %58, null
  br i1 %59, label %60, label %63

60:                                               ; preds = %57
  %61 = load i32, i32* @GSS_C_NO_OID, align 4
  %62 = load i32*, i32** %16, align 8
  store i32 %61, i32* %62, align 4
  br label %63

63:                                               ; preds = %60, %57
  %64 = load i64, i64* @GSS_C_NO_NAME, align 8
  store i64 %64, i64* %25, align 8
  store i64 %64, i64* %24, align 8
  %65 = load %struct._gss_mech_switch*, %struct._gss_mech_switch** %22, align 8
  %66 = getelementptr inbounds %struct._gss_mech_switch, %struct._gss_mech_switch* %65, i32 0, i32 0
  %67 = load i64 (i64*, i32, i64*, i64*, i64*, i32*, i64*, i32*, i32*)*, i64 (i64*, i32, i64*, i64*, i64*, i32*, i64*, i32*, i32*)** %66, align 8
  %68 = load i64*, i64** %11, align 8
  %69 = load %struct._gss_context*, %struct._gss_context** %21, align 8
  %70 = getelementptr inbounds %struct._gss_context, %struct._gss_context* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = load i64*, i64** %13, align 8
  %73 = icmp ne i64* %72, null
  br i1 %73, label %74, label %75

74:                                               ; preds = %63
  br label %76

75:                                               ; preds = %63
  br label %76

76:                                               ; preds = %75, %74
  %77 = phi i64* [ %24, %74 ], [ null, %75 ]
  %78 = load i64*, i64** %14, align 8
  %79 = icmp ne i64* %78, null
  br i1 %79, label %80, label %81

80:                                               ; preds = %76
  br label %82

81:                                               ; preds = %76
  br label %82

82:                                               ; preds = %81, %80
  %83 = phi i64* [ %25, %80 ], [ null, %81 ]
  %84 = load i64*, i64** %15, align 8
  %85 = load i32*, i32** %16, align 8
  %86 = load i64*, i64** %17, align 8
  %87 = load i32*, i32** %18, align 8
  %88 = load i32*, i32** %19, align 8
  %89 = call i64 %67(i64* %68, i32 %71, i64* %77, i64* %83, i64* %84, i32* %85, i64* %86, i32* %87, i32* %88)
  store i64 %89, i64* %20, align 8
  %90 = load i64, i64* %20, align 8
  %91 = load i64, i64* @GSS_S_COMPLETE, align 8
  %92 = icmp ne i64 %90, %91
  br i1 %92, label %93, label %100

93:                                               ; preds = %82
  %94 = load %struct._gss_mech_switch*, %struct._gss_mech_switch** %22, align 8
  %95 = load i64, i64* %20, align 8
  %96 = load i64*, i64** %11, align 8
  %97 = load i64, i64* %96, align 8
  %98 = call i32 @_gss_mg_error(%struct._gss_mech_switch* %94, i64 %95, i64 %97)
  %99 = load i64, i64* %20, align 8
  store i64 %99, i64* %10, align 8
  br label %162

100:                                              ; preds = %82
  %101 = load i64*, i64** %13, align 8
  %102 = icmp ne i64* %101, null
  br i1 %102, label %103, label %127

103:                                              ; preds = %100
  %104 = load %struct._gss_mech_switch*, %struct._gss_mech_switch** %22, align 8
  %105 = load i64, i64* %24, align 8
  %106 = call %struct._gss_name* @_gss_make_name(%struct._gss_mech_switch* %104, i64 %105)
  store %struct._gss_name* %106, %struct._gss_name** %23, align 8
  %107 = load %struct._gss_name*, %struct._gss_name** %23, align 8
  %108 = icmp ne %struct._gss_name* %107, null
  br i1 %108, label %123, label %109

109:                                              ; preds = %103
  %110 = load i32*, i32** %16, align 8
  %111 = icmp ne i32* %110, null
  br i1 %111, label %112, label %115

112:                                              ; preds = %109
  %113 = load i32, i32* @GSS_C_NO_OID, align 4
  %114 = load i32*, i32** %16, align 8
  store i32 %113, i32* %114, align 4
  br label %115

115:                                              ; preds = %112, %109
  %116 = load %struct._gss_mech_switch*, %struct._gss_mech_switch** %22, align 8
  %117 = getelementptr inbounds %struct._gss_mech_switch, %struct._gss_mech_switch* %116, i32 0, i32 1
  %118 = load i32 (i64*, i64*)*, i32 (i64*, i64*)** %117, align 8
  %119 = load i64*, i64** %11, align 8
  %120 = call i32 %118(i64* %119, i64* %24)
  %121 = load i64*, i64** %11, align 8
  store i64 0, i64* %121, align 8
  %122 = load i64, i64* @GSS_S_FAILURE, align 8
  store i64 %122, i64* %10, align 8
  br label %162

123:                                              ; preds = %103
  %124 = load %struct._gss_name*, %struct._gss_name** %23, align 8
  %125 = ptrtoint %struct._gss_name* %124 to i64
  %126 = load i64*, i64** %13, align 8
  store i64 %125, i64* %126, align 8
  br label %127

127:                                              ; preds = %123, %100
  %128 = load i64*, i64** %14, align 8
  %129 = icmp ne i64* %128, null
  br i1 %129, label %130, label %160

130:                                              ; preds = %127
  %131 = load %struct._gss_mech_switch*, %struct._gss_mech_switch** %22, align 8
  %132 = load i64, i64* %25, align 8
  %133 = call %struct._gss_name* @_gss_make_name(%struct._gss_mech_switch* %131, i64 %132)
  store %struct._gss_name* %133, %struct._gss_name** %23, align 8
  %134 = load %struct._gss_name*, %struct._gss_name** %23, align 8
  %135 = icmp ne %struct._gss_name* %134, null
  br i1 %135, label %156, label %136

136:                                              ; preds = %130
  %137 = load i32*, i32** %16, align 8
  %138 = icmp ne i32* %137, null
  br i1 %138, label %139, label %142

139:                                              ; preds = %136
  %140 = load i32, i32* @GSS_C_NO_OID, align 4
  %141 = load i32*, i32** %16, align 8
  store i32 %140, i32* %141, align 4
  br label %142

142:                                              ; preds = %139, %136
  %143 = load i64*, i64** %13, align 8
  %144 = icmp ne i64* %143, null
  br i1 %144, label %145, label %149

145:                                              ; preds = %142
  %146 = load i64*, i64** %11, align 8
  %147 = load i64*, i64** %13, align 8
  %148 = call i32 @gss_release_name(i64* %146, i64* %147)
  br label %149

149:                                              ; preds = %145, %142
  %150 = load %struct._gss_mech_switch*, %struct._gss_mech_switch** %22, align 8
  %151 = getelementptr inbounds %struct._gss_mech_switch, %struct._gss_mech_switch* %150, i32 0, i32 1
  %152 = load i32 (i64*, i64*)*, i32 (i64*, i64*)** %151, align 8
  %153 = load i64*, i64** %11, align 8
  %154 = call i32 %152(i64* %153, i64* %24)
  store i64* null, i64** %11, align 8
  %155 = load i64, i64* @GSS_S_FAILURE, align 8
  store i64 %155, i64* %10, align 8
  br label %162

156:                                              ; preds = %130
  %157 = load %struct._gss_name*, %struct._gss_name** %23, align 8
  %158 = ptrtoint %struct._gss_name* %157 to i64
  %159 = load i64*, i64** %14, align 8
  store i64 %158, i64* %159, align 8
  br label %160

160:                                              ; preds = %156, %127
  %161 = load i64, i64* @GSS_S_COMPLETE, align 8
  store i64 %161, i64* %10, align 8
  br label %162

162:                                              ; preds = %160, %149, %115, %93
  %163 = load i64, i64* %10, align 8
  ret i64 %163
}

declare dso_local i32 @_gss_mg_error(%struct._gss_mech_switch*, i64, i64) #1

declare dso_local %struct._gss_name* @_gss_make_name(%struct._gss_mech_switch*, i64) #1

declare dso_local i32 @gss_release_name(i64*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
