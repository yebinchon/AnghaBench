; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/kadmin/extr_mod.c_do_mod_entry.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/kadmin/extr_mod.c_do_mod_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32 }
%struct.modify_options = type { i32, %struct.TYPE_17__, %struct.TYPE_15__, %struct.TYPE_14__, i64, i64, i64, i64, i64 }
%struct.TYPE_17__ = type { i64 }
%struct.TYPE_15__ = type { i64 }
%struct.TYPE_14__ = type { i64 }

@kadm_handle = common dso_local global i32 0, align 4
@KADM5_PRINCIPAL = common dso_local global i32 0, align 4
@KADM5_ATTRIBUTES = common dso_local global i32 0, align 4
@KADM5_MAX_LIFE = common dso_local global i32 0, align 4
@KADM5_MAX_RLIFE = common dso_local global i32 0, align 4
@KADM5_PRINC_EXPIRE_TIME = common dso_local global i32 0, align 4
@KADM5_PW_EXPIRATION = common dso_local global i32 0, align 4
@context = common dso_local global i32 0, align 4
@KADM5_KVNO = common dso_local global i32 0, align 4
@KADM5_TL_DATA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"kadm5_modify_principal\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @do_mod_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_mod_entry(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_16__, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.modify_options*, align 8
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  store i32 0, i32* %8, align 4
  %10 = load i8*, i8** %5, align 8
  %11 = bitcast i8* %10 to %struct.modify_options*
  store %struct.modify_options* %11, %struct.modify_options** %9, align 8
  %12 = call i32 @memset(%struct.TYPE_16__* %7, i32 0, i32 4)
  %13 = load i32, i32* @kadm_handle, align 4
  %14 = load i32, i32* %4, align 4
  %15 = load i32, i32* @KADM5_PRINCIPAL, align 4
  %16 = load i32, i32* @KADM5_ATTRIBUTES, align 4
  %17 = or i32 %15, %16
  %18 = load i32, i32* @KADM5_MAX_LIFE, align 4
  %19 = or i32 %17, %18
  %20 = load i32, i32* @KADM5_MAX_RLIFE, align 4
  %21 = or i32 %19, %20
  %22 = load i32, i32* @KADM5_PRINC_EXPIRE_TIME, align 4
  %23 = or i32 %21, %22
  %24 = load i32, i32* @KADM5_PW_EXPIRATION, align 4
  %25 = or i32 %23, %24
  %26 = call i32 @kadm5_get_principal(i32 %13, i32 %14, %struct.TYPE_16__* %7, i32 %25)
  store i32 %26, i32* %6, align 4
  %27 = load i32, i32* %6, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %2
  %30 = load i32, i32* %6, align 4
  store i32 %30, i32* %3, align 4
  br label %172

31:                                               ; preds = %2
  %32 = load %struct.modify_options*, %struct.modify_options** %9, align 8
  %33 = getelementptr inbounds %struct.modify_options, %struct.modify_options* %32, i32 0, i32 8
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %79, label %36

36:                                               ; preds = %31
  %37 = load %struct.modify_options*, %struct.modify_options** %9, align 8
  %38 = getelementptr inbounds %struct.modify_options, %struct.modify_options* %37, i32 0, i32 7
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %79, label %41

41:                                               ; preds = %36
  %42 = load %struct.modify_options*, %struct.modify_options** %9, align 8
  %43 = getelementptr inbounds %struct.modify_options, %struct.modify_options* %42, i32 0, i32 6
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %79, label %46

46:                                               ; preds = %41
  %47 = load %struct.modify_options*, %struct.modify_options** %9, align 8
  %48 = getelementptr inbounds %struct.modify_options, %struct.modify_options* %47, i32 0, i32 5
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %79, label %51

51:                                               ; preds = %46
  %52 = load %struct.modify_options*, %struct.modify_options** %9, align 8
  %53 = getelementptr inbounds %struct.modify_options, %struct.modify_options* %52, i32 0, i32 4
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %79, label %56

56:                                               ; preds = %51
  %57 = load %struct.modify_options*, %struct.modify_options** %9, align 8
  %58 = getelementptr inbounds %struct.modify_options, %struct.modify_options* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = icmp ne i32 %59, -1
  br i1 %60, label %79, label %61

61:                                               ; preds = %56
  %62 = load %struct.modify_options*, %struct.modify_options** %9, align 8
  %63 = getelementptr inbounds %struct.modify_options, %struct.modify_options* %62, i32 0, i32 3
  %64 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %79, label %67

67:                                               ; preds = %61
  %68 = load %struct.modify_options*, %struct.modify_options** %9, align 8
  %69 = getelementptr inbounds %struct.modify_options, %struct.modify_options* %68, i32 0, i32 2
  %70 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %79, label %73

73:                                               ; preds = %67
  %74 = load %struct.modify_options*, %struct.modify_options** %9, align 8
  %75 = getelementptr inbounds %struct.modify_options, %struct.modify_options* %74, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %152

79:                                               ; preds = %73, %67, %61, %56, %51, %46, %41, %36, %31
  %80 = load i32, i32* @context, align 4
  %81 = load %struct.modify_options*, %struct.modify_options** %9, align 8
  %82 = getelementptr inbounds %struct.modify_options, %struct.modify_options* %81, i32 0, i32 8
  %83 = load i64, i64* %82, align 8
  %84 = load %struct.modify_options*, %struct.modify_options** %9, align 8
  %85 = getelementptr inbounds %struct.modify_options, %struct.modify_options* %84, i32 0, i32 7
  %86 = load i64, i64* %85, align 8
  %87 = load %struct.modify_options*, %struct.modify_options** %9, align 8
  %88 = getelementptr inbounds %struct.modify_options, %struct.modify_options* %87, i32 0, i32 6
  %89 = load i64, i64* %88, align 8
  %90 = load %struct.modify_options*, %struct.modify_options** %9, align 8
  %91 = getelementptr inbounds %struct.modify_options, %struct.modify_options* %90, i32 0, i32 5
  %92 = load i64, i64* %91, align 8
  %93 = load %struct.modify_options*, %struct.modify_options** %9, align 8
  %94 = getelementptr inbounds %struct.modify_options, %struct.modify_options* %93, i32 0, i32 4
  %95 = load i64, i64* %94, align 8
  %96 = call i32 @set_entry(i32 %80, %struct.TYPE_16__* %7, i32* %8, i64 %83, i64 %86, i64 %89, i64 %92, i64 %95)
  store i32 %96, i32* %6, align 4
  %97 = load %struct.modify_options*, %struct.modify_options** %9, align 8
  %98 = getelementptr inbounds %struct.modify_options, %struct.modify_options* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = icmp ne i32 %99, -1
  br i1 %100, label %101, label %109

101:                                              ; preds = %79
  %102 = load %struct.modify_options*, %struct.modify_options** %9, align 8
  %103 = getelementptr inbounds %struct.modify_options, %struct.modify_options* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %7, i32 0, i32 0
  store i32 %104, i32* %105, align 4
  %106 = load i32, i32* @KADM5_KVNO, align 4
  %107 = load i32, i32* %8, align 4
  %108 = or i32 %107, %106
  store i32 %108, i32* %8, align 4
  br label %109

109:                                              ; preds = %101, %79
  %110 = load %struct.modify_options*, %struct.modify_options** %9, align 8
  %111 = getelementptr inbounds %struct.modify_options, %struct.modify_options* %110, i32 0, i32 3
  %112 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %123

115:                                              ; preds = %109
  %116 = load i32, i32* @context, align 4
  %117 = load %struct.modify_options*, %struct.modify_options** %9, align 8
  %118 = getelementptr inbounds %struct.modify_options, %struct.modify_options* %117, i32 0, i32 3
  %119 = call i32 @add_constrained_delegation(i32 %116, %struct.TYPE_16__* %7, %struct.TYPE_14__* %118)
  %120 = load i32, i32* @KADM5_TL_DATA, align 4
  %121 = load i32, i32* %8, align 4
  %122 = or i32 %121, %120
  store i32 %122, i32* %8, align 4
  br label %123

123:                                              ; preds = %115, %109
  %124 = load %struct.modify_options*, %struct.modify_options** %9, align 8
  %125 = getelementptr inbounds %struct.modify_options, %struct.modify_options* %124, i32 0, i32 2
  %126 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %125, i32 0, i32 0
  %127 = load i64, i64* %126, align 8
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %137

129:                                              ; preds = %123
  %130 = load i32, i32* @context, align 4
  %131 = load %struct.modify_options*, %struct.modify_options** %9, align 8
  %132 = getelementptr inbounds %struct.modify_options, %struct.modify_options* %131, i32 0, i32 2
  %133 = call i32 @add_aliases(i32 %130, %struct.TYPE_16__* %7, %struct.TYPE_15__* %132)
  %134 = load i32, i32* @KADM5_TL_DATA, align 4
  %135 = load i32, i32* %8, align 4
  %136 = or i32 %135, %134
  store i32 %136, i32* %8, align 4
  br label %137

137:                                              ; preds = %129, %123
  %138 = load %struct.modify_options*, %struct.modify_options** %9, align 8
  %139 = getelementptr inbounds %struct.modify_options, %struct.modify_options* %138, i32 0, i32 1
  %140 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %139, i32 0, i32 0
  %141 = load i64, i64* %140, align 8
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %143, label %151

143:                                              ; preds = %137
  %144 = load i32, i32* @context, align 4
  %145 = load %struct.modify_options*, %struct.modify_options** %9, align 8
  %146 = getelementptr inbounds %struct.modify_options, %struct.modify_options* %145, i32 0, i32 1
  %147 = call i32 @add_pkinit_acl(i32 %144, %struct.TYPE_16__* %7, %struct.TYPE_17__* %146)
  %148 = load i32, i32* @KADM5_TL_DATA, align 4
  %149 = load i32, i32* %8, align 4
  %150 = or i32 %149, %148
  store i32 %150, i32* %8, align 4
  br label %151

151:                                              ; preds = %143, %137
  br label %154

152:                                              ; preds = %73
  %153 = call i32 @edit_entry(%struct.TYPE_16__* %7, i32* %8, i32* null, i32 0)
  store i32 %153, i32* %6, align 4
  br label %154

154:                                              ; preds = %152, %151
  %155 = load i32, i32* %6, align 4
  %156 = icmp eq i32 %155, 0
  br i1 %156, label %157, label %168

157:                                              ; preds = %154
  %158 = load i32, i32* @kadm_handle, align 4
  %159 = load i32, i32* %8, align 4
  %160 = call i32 @kadm5_modify_principal(i32 %158, %struct.TYPE_16__* %7, i32 %159)
  store i32 %160, i32* %6, align 4
  %161 = load i32, i32* %6, align 4
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %167

163:                                              ; preds = %157
  %164 = load i32, i32* @context, align 4
  %165 = load i32, i32* %6, align 4
  %166 = call i32 @krb5_warn(i32 %164, i32 %165, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  br label %167

167:                                              ; preds = %163, %157
  br label %168

168:                                              ; preds = %167, %154
  %169 = load i32, i32* @kadm_handle, align 4
  %170 = call i32 @kadm5_free_principal_ent(i32 %169, %struct.TYPE_16__* %7)
  %171 = load i32, i32* %6, align 4
  store i32 %171, i32* %3, align 4
  br label %172

172:                                              ; preds = %168, %29
  %173 = load i32, i32* %3, align 4
  ret i32 %173
}

declare dso_local i32 @memset(%struct.TYPE_16__*, i32, i32) #1

declare dso_local i32 @kadm5_get_principal(i32, i32, %struct.TYPE_16__*, i32) #1

declare dso_local i32 @set_entry(i32, %struct.TYPE_16__*, i32*, i64, i64, i64, i64, i64) #1

declare dso_local i32 @add_constrained_delegation(i32, %struct.TYPE_16__*, %struct.TYPE_14__*) #1

declare dso_local i32 @add_aliases(i32, %struct.TYPE_16__*, %struct.TYPE_15__*) #1

declare dso_local i32 @add_pkinit_acl(i32, %struct.TYPE_16__*, %struct.TYPE_17__*) #1

declare dso_local i32 @edit_entry(%struct.TYPE_16__*, i32*, i32*, i32) #1

declare dso_local i32 @kadm5_modify_principal(i32, %struct.TYPE_16__*, i32) #1

declare dso_local i32 @krb5_warn(i32, i32, i8*) #1

declare dso_local i32 @kadm5_free_principal_ent(i32, %struct.TYPE_16__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
