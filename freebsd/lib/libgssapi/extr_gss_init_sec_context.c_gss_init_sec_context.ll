; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libgssapi/extr_gss_init_sec_context.c_gss_init_sec_context.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libgssapi/extr_gss_init_sec_context.c_gss_init_sec_context.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i32* }
%struct._gss_mech_switch = type { i64 (i64*, i32, i32*, i32, i32*, i64, i64, i32, i32, i32**, i32, i64*, i64*)*, i32 }
%struct._gss_name = type { i32 }
%struct._gss_mechanism_name = type { i32 }
%struct._gss_context = type { i32, %struct._gss_mech_switch* }

@GSS_C_NO_OID = common dso_local global i32* null, align 8
@_gss_mech_oids = common dso_local global %struct.TYPE_3__* null, align 8
@GSS_C_NO_OID_SET = common dso_local global %struct.TYPE_3__* null, align 8
@GSS_S_BAD_MECH = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i64 0, align 8
@GSS_S_FAILURE = common dso_local global i64 0, align 8
@GSS_S_COMPLETE = common dso_local global i64 0, align 8
@GSS_S_CONTINUE_NEEDED = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @gss_init_sec_context(i64* %0, i32 %1, i64* %2, i64 %3, i32* %4, i64 %5, i64 %6, i32 %7, i32 %8, i32** %9, i32 %10, i64* %11, i64* %12) #0 {
  %14 = alloca i64, align 8
  %15 = alloca i64*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i64*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32**, align 8
  %25 = alloca i32, align 4
  %26 = alloca i64*, align 8
  %27 = alloca i64*, align 8
  %28 = alloca i64, align 8
  %29 = alloca %struct._gss_mech_switch*, align 8
  %30 = alloca %struct._gss_name*, align 8
  %31 = alloca %struct._gss_mechanism_name*, align 8
  %32 = alloca %struct._gss_context*, align 8
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  %35 = alloca i32*, align 8
  store i64* %0, i64** %15, align 8
  store i32 %1, i32* %16, align 4
  store i64* %2, i64** %17, align 8
  store i64 %3, i64* %18, align 8
  store i32* %4, i32** %19, align 8
  store i64 %5, i64* %20, align 8
  store i64 %6, i64* %21, align 8
  store i32 %7, i32* %22, align 4
  store i32 %8, i32* %23, align 4
  store i32** %9, i32*** %24, align 8
  store i32 %10, i32* %25, align 4
  store i64* %11, i64** %26, align 8
  store i64* %12, i64** %27, align 8
  %36 = load i64, i64* %18, align 8
  %37 = inttoptr i64 %36 to %struct._gss_name*
  store %struct._gss_name* %37, %struct._gss_name** %30, align 8
  %38 = load i64*, i64** %17, align 8
  %39 = load i64, i64* %38, align 8
  %40 = inttoptr i64 %39 to %struct._gss_context*
  store %struct._gss_context* %40, %struct._gss_context** %32, align 8
  %41 = load i32*, i32** %19, align 8
  store i32* %41, i32** %35, align 8
  %42 = load i64*, i64** %15, align 8
  store i64 0, i64* %42, align 8
  %43 = load i32, i32* %25, align 4
  %44 = call i32 @_gss_buffer_zero(i32 %43)
  %45 = load i32**, i32*** %24, align 8
  %46 = icmp ne i32** %45, null
  br i1 %46, label %47, label %50

47:                                               ; preds = %13
  %48 = load i32*, i32** @GSS_C_NO_OID, align 8
  %49 = load i32**, i32*** %24, align 8
  store i32* %48, i32** %49, align 8
  br label %50

50:                                               ; preds = %47, %13
  %51 = load i64*, i64** %26, align 8
  %52 = icmp ne i64* %51, null
  br i1 %52, label %53, label %55

53:                                               ; preds = %50
  %54 = load i64*, i64** %26, align 8
  store i64 0, i64* %54, align 8
  br label %55

55:                                               ; preds = %53, %50
  %56 = load i64*, i64** %27, align 8
  %57 = icmp ne i64* %56, null
  br i1 %57, label %58, label %60

58:                                               ; preds = %55
  %59 = load i64*, i64** %27, align 8
  store i64 0, i64* %59, align 8
  br label %60

60:                                               ; preds = %58, %55
  %61 = load %struct._gss_context*, %struct._gss_context** %32, align 8
  %62 = icmp ne %struct._gss_context* %61, null
  br i1 %62, label %106, label %63

63:                                               ; preds = %60
  %64 = load i32*, i32** %35, align 8
  %65 = load i32*, i32** @GSS_C_NO_OID, align 8
  %66 = icmp eq i32* %64, %65
  br i1 %66, label %67, label %84

67:                                               ; preds = %63
  %68 = call i32 (...) @_gss_load_mech()
  %69 = load %struct.TYPE_3__*, %struct.TYPE_3__** @_gss_mech_oids, align 8
  %70 = load %struct.TYPE_3__*, %struct.TYPE_3__** @GSS_C_NO_OID_SET, align 8
  %71 = icmp eq %struct.TYPE_3__* %69, %70
  br i1 %71, label %77, label %72

72:                                               ; preds = %67
  %73 = load %struct.TYPE_3__*, %struct.TYPE_3__** @_gss_mech_oids, align 8
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = icmp eq i64 %75, 0
  br i1 %76, label %77, label %79

77:                                               ; preds = %72, %67
  %78 = load i64, i64* @GSS_S_BAD_MECH, align 8
  store i64 %78, i64* %14, align 8
  br label %181

79:                                               ; preds = %72
  %80 = load %struct.TYPE_3__*, %struct.TYPE_3__** @_gss_mech_oids, align 8
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i32 0, i32 1
  %82 = load i32*, i32** %81, align 8
  %83 = getelementptr inbounds i32, i32* %82, i64 0
  store i32* %83, i32** %35, align 8
  br label %84

84:                                               ; preds = %79, %63
  %85 = call %struct._gss_context* @malloc(i32 16)
  store %struct._gss_context* %85, %struct._gss_context** %32, align 8
  %86 = load %struct._gss_context*, %struct._gss_context** %32, align 8
  %87 = icmp ne %struct._gss_context* %86, null
  br i1 %87, label %92, label %88

88:                                               ; preds = %84
  %89 = load i64, i64* @ENOMEM, align 8
  %90 = load i64*, i64** %15, align 8
  store i64 %89, i64* %90, align 8
  %91 = load i64, i64* @GSS_S_FAILURE, align 8
  store i64 %91, i64* %14, align 8
  br label %181

92:                                               ; preds = %84
  %93 = load %struct._gss_context*, %struct._gss_context** %32, align 8
  %94 = call i32 @memset(%struct._gss_context* %93, i32 0, i32 16)
  %95 = load i32*, i32** %35, align 8
  %96 = call %struct._gss_mech_switch* @_gss_find_mech_switch(i32* %95)
  %97 = load %struct._gss_context*, %struct._gss_context** %32, align 8
  %98 = getelementptr inbounds %struct._gss_context, %struct._gss_context* %97, i32 0, i32 1
  store %struct._gss_mech_switch* %96, %struct._gss_mech_switch** %98, align 8
  store %struct._gss_mech_switch* %96, %struct._gss_mech_switch** %29, align 8
  %99 = load %struct._gss_mech_switch*, %struct._gss_mech_switch** %29, align 8
  %100 = icmp ne %struct._gss_mech_switch* %99, null
  br i1 %100, label %105, label %101

101:                                              ; preds = %92
  %102 = load %struct._gss_context*, %struct._gss_context** %32, align 8
  %103 = call i32 @free(%struct._gss_context* %102)
  %104 = load i64, i64* @GSS_S_BAD_MECH, align 8
  store i64 %104, i64* %14, align 8
  br label %181

105:                                              ; preds = %92
  store i32 1, i32* %34, align 4
  br label %114

106:                                              ; preds = %60
  %107 = load %struct._gss_context*, %struct._gss_context** %32, align 8
  %108 = getelementptr inbounds %struct._gss_context, %struct._gss_context* %107, i32 0, i32 1
  %109 = load %struct._gss_mech_switch*, %struct._gss_mech_switch** %108, align 8
  store %struct._gss_mech_switch* %109, %struct._gss_mech_switch** %29, align 8
  %110 = load %struct._gss_context*, %struct._gss_context** %32, align 8
  %111 = getelementptr inbounds %struct._gss_context, %struct._gss_context* %110, i32 0, i32 1
  %112 = load %struct._gss_mech_switch*, %struct._gss_mech_switch** %111, align 8
  %113 = getelementptr inbounds %struct._gss_mech_switch, %struct._gss_mech_switch* %112, i32 0, i32 1
  store i32* %113, i32** %35, align 8
  store i32 0, i32* %34, align 4
  br label %114

114:                                              ; preds = %106, %105
  %115 = load i64*, i64** %15, align 8
  %116 = load %struct._gss_name*, %struct._gss_name** %30, align 8
  %117 = load i32*, i32** %35, align 8
  %118 = call i64 @_gss_find_mn(i64* %115, %struct._gss_name* %116, i32* %117, %struct._gss_mechanism_name** %31)
  store i64 %118, i64* %28, align 8
  %119 = load i64, i64* %28, align 8
  %120 = load i64, i64* @GSS_S_COMPLETE, align 8
  %121 = icmp ne i64 %119, %120
  br i1 %121, label %122, label %130

122:                                              ; preds = %114
  %123 = load i32, i32* %34, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %128

125:                                              ; preds = %122
  %126 = load %struct._gss_context*, %struct._gss_context** %32, align 8
  %127 = call i32 @free(%struct._gss_context* %126)
  br label %128

128:                                              ; preds = %125, %122
  %129 = load i64, i64* %28, align 8
  store i64 %129, i64* %14, align 8
  br label %181

130:                                              ; preds = %114
  %131 = load i32, i32* %16, align 4
  %132 = load i32*, i32** %35, align 8
  %133 = call i32 @_gss_mech_cred_find(i32 %131, i32* %132)
  store i32 %133, i32* %33, align 4
  %134 = load %struct._gss_mech_switch*, %struct._gss_mech_switch** %29, align 8
  %135 = getelementptr inbounds %struct._gss_mech_switch, %struct._gss_mech_switch* %134, i32 0, i32 0
  %136 = load i64 (i64*, i32, i32*, i32, i32*, i64, i64, i32, i32, i32**, i32, i64*, i64*)*, i64 (i64*, i32, i32*, i32, i32*, i64, i64, i32, i32, i32**, i32, i64*, i64*)** %135, align 8
  %137 = load i64*, i64** %15, align 8
  %138 = load i32, i32* %33, align 4
  %139 = load %struct._gss_context*, %struct._gss_context** %32, align 8
  %140 = getelementptr inbounds %struct._gss_context, %struct._gss_context* %139, i32 0, i32 0
  %141 = load %struct._gss_mechanism_name*, %struct._gss_mechanism_name** %31, align 8
  %142 = getelementptr inbounds %struct._gss_mechanism_name, %struct._gss_mechanism_name* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 4
  %144 = load i32*, i32** %35, align 8
  %145 = load i64, i64* %20, align 8
  %146 = load i64, i64* %21, align 8
  %147 = load i32, i32* %22, align 4
  %148 = load i32, i32* %23, align 4
  %149 = load i32**, i32*** %24, align 8
  %150 = load i32, i32* %25, align 4
  %151 = load i64*, i64** %26, align 8
  %152 = load i64*, i64** %27, align 8
  %153 = call i64 %136(i64* %137, i32 %138, i32* %140, i32 %143, i32* %144, i64 %145, i64 %146, i32 %147, i32 %148, i32** %149, i32 %150, i64* %151, i64* %152)
  store i64 %153, i64* %28, align 8
  %154 = load i64, i64* %28, align 8
  %155 = load i64, i64* @GSS_S_COMPLETE, align 8
  %156 = icmp ne i64 %154, %155
  br i1 %156, label %157, label %175

157:                                              ; preds = %130
  %158 = load i64, i64* %28, align 8
  %159 = load i64, i64* @GSS_S_CONTINUE_NEEDED, align 8
  %160 = icmp ne i64 %158, %159
  br i1 %160, label %161, label %175

161:                                              ; preds = %157
  %162 = load i32, i32* %34, align 4
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %164, label %167

164:                                              ; preds = %161
  %165 = load %struct._gss_context*, %struct._gss_context** %32, align 8
  %166 = call i32 @free(%struct._gss_context* %165)
  br label %167

167:                                              ; preds = %164, %161
  %168 = load i32, i32* %25, align 4
  %169 = call i32 @_gss_buffer_zero(i32 %168)
  %170 = load %struct._gss_mech_switch*, %struct._gss_mech_switch** %29, align 8
  %171 = load i64, i64* %28, align 8
  %172 = load i64*, i64** %15, align 8
  %173 = load i64, i64* %172, align 8
  %174 = call i32 @_gss_mg_error(%struct._gss_mech_switch* %170, i64 %171, i64 %173)
  br label %179

175:                                              ; preds = %157, %130
  %176 = load %struct._gss_context*, %struct._gss_context** %32, align 8
  %177 = ptrtoint %struct._gss_context* %176 to i64
  %178 = load i64*, i64** %17, align 8
  store i64 %177, i64* %178, align 8
  br label %179

179:                                              ; preds = %175, %167
  %180 = load i64, i64* %28, align 8
  store i64 %180, i64* %14, align 8
  br label %181

181:                                              ; preds = %179, %128, %101, %88, %77
  %182 = load i64, i64* %14, align 8
  ret i64 %182
}

declare dso_local i32 @_gss_buffer_zero(i32) #1

declare dso_local i32 @_gss_load_mech(...) #1

declare dso_local %struct._gss_context* @malloc(i32) #1

declare dso_local i32 @memset(%struct._gss_context*, i32, i32) #1

declare dso_local %struct._gss_mech_switch* @_gss_find_mech_switch(i32*) #1

declare dso_local i32 @free(%struct._gss_context*) #1

declare dso_local i64 @_gss_find_mn(i64*, %struct._gss_name*, i32*, %struct._gss_mechanism_name**) #1

declare dso_local i32 @_gss_mech_cred_find(i32, i32*) #1

declare dso_local i32 @_gss_mg_error(%struct._gss_mech_switch*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
