; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/kcm/extr_acquire.c_kcm_ccache_acquire.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/kcm/extr_acquire.c_kcm_ccache_acquire.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, i64, i64, i32, i32, %struct.TYPE_11__, i32, i32* }
%struct.TYPE_11__ = type { i32*, %struct.TYPE_13__ }
%struct.TYPE_13__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i64 }

@KCM_FLAGS_USE_CACHED_KEY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [57 x i8] c"kcm_ccache_acquire: KCM_FLAGS_USE_CACHED_KEY without key\00", align 1
@KCM_FLAGS_USE_KEYTAB = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [56 x i8] c"kcm_ccache_acquire: KCM_FLAGS_USE_KEYTAB without keytab\00", align 1
@.str.2 = private unnamed_addr constant [60 x i8] c"Cannot acquire initial credentials for cache %s without key\00", align 1
@KRB5_FCC_INTERNAL = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [58 x i8] c"Failed to unparse service principal name for cache %s: %s\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"kcm\00", align 1
@.str.5 = private unnamed_addr constant [47 x i8] c"Failed to acquire credentials for cache %s: %s\00", align 1
@.str.6 = private unnamed_addr constant [45 x i8] c"Failed to store credentials for cache %s: %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @kcm_ccache_acquire(i32 %0, %struct.TYPE_12__* %1, i32** %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_12__*, align 8
  %7 = alloca i32**, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  store i32 %0, i32* %5, align 4
  store %struct.TYPE_12__* %1, %struct.TYPE_12__** %6, align 8
  store i32** %2, i32*** %7, align 8
  store i64 0, i64* %8, align 8
  store i32* null, i32** %11, align 8
  store i8* null, i8** %13, align 8
  %14 = call i32 @memset(i32* %9, i32 0, i32 4)
  %15 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %16 = call i32 @KCM_ASSERT_VALID(%struct.TYPE_12__* %15)
  %17 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @KCM_FLAGS_USE_CACHED_KEY, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %35

23:                                               ; preds = %3
  %24 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %24, i32 0, i32 5
  %26 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %23
  %32 = load i32, i32* %5, align 4
  %33 = call i32 @krb5_abortx(i32 %32, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0))
  br label %34

34:                                               ; preds = %31, %23
  br label %59

35:                                               ; preds = %3
  %36 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* @KCM_FLAGS_USE_KEYTAB, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %52

42:                                               ; preds = %35
  %43 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %44 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %43, i32 0, i32 5
  %45 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %44, i32 0, i32 0
  %46 = load i32*, i32** %45, align 8
  %47 = icmp eq i32* %46, null
  br i1 %47, label %48, label %51

48:                                               ; preds = %42
  %49 = load i32, i32* %5, align 4
  %50 = call i32 @krb5_abortx(i32 %49, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.1, i64 0, i64 0))
  br label %51

51:                                               ; preds = %48, %42
  br label %58

52:                                               ; preds = %35
  %53 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %54 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %53, i32 0, i32 4
  %55 = load i32, i32* %54, align 4
  %56 = call i32 (i32, i8*, i32, ...) @kcm_log(i32 0, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.2, i64 0, i64 0), i32 %55)
  %57 = load i64, i64* @KRB5_FCC_INTERNAL, align 8
  store i64 %57, i64* %4, align 8
  br label %211

58:                                               ; preds = %51
  br label %59

59:                                               ; preds = %58, %34
  %60 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %61 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %60, i32 0, i32 3
  %62 = call i32 @HEIMDAL_MUTEX_lock(i32* %61)
  %63 = load i32, i32* %5, align 4
  %64 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %65 = call i32 @kcm_internal_ccache(i32 %63, %struct.TYPE_12__* %64, i32* %12)
  %66 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %67 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %66, i32 0, i32 7
  %68 = load i32*, i32** %67, align 8
  %69 = icmp ne i32* %68, null
  br i1 %69, label %70, label %88

70:                                               ; preds = %59
  %71 = load i32, i32* %5, align 4
  %72 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %73 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %72, i32 0, i32 7
  %74 = load i32*, i32** %73, align 8
  %75 = call i64 @krb5_unparse_name(i32 %71, i32* %74, i8** %13)
  store i64 %75, i64* %8, align 8
  %76 = load i64, i64* %8, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %87

78:                                               ; preds = %70
  %79 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %80 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %79, i32 0, i32 4
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* %5, align 4
  %83 = load i64, i64* %8, align 8
  %84 = call i32 @krb5_get_err_text(i32 %82, i64 %83)
  %85 = call i32 (i32, i8*, i32, ...) @kcm_log(i32 0, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.3, i64 0, i64 0), i32 %81, i32 %84)
  %86 = load i64, i64* %8, align 8
  store i64 %86, i64* %4, align 8
  br label %211

87:                                               ; preds = %70
  br label %88

88:                                               ; preds = %87, %59
  %89 = load i32, i32* %5, align 4
  %90 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %91 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %90, i32 0, i32 6
  %92 = load i32, i32* %91, align 8
  %93 = call i32 @krb5_principal_get_realm(i32 %89, i32 %92)
  store i32 %93, i32* %10, align 4
  %94 = load i32, i32* %5, align 4
  %95 = call i64 @krb5_get_init_creds_opt_alloc(i32 %94, i32** %11)
  store i64 %95, i64* %8, align 8
  %96 = load i64, i64* %8, align 8
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %99

98:                                               ; preds = %88
  br label %199

99:                                               ; preds = %88
  %100 = load i32, i32* %5, align 4
  %101 = load i32, i32* %10, align 4
  %102 = load i32*, i32** %11, align 8
  %103 = call i32 @krb5_get_init_creds_opt_set_default_flags(i32 %100, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i32 %101, i32* %102)
  %104 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %105 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %104, i32 0, i32 1
  %106 = load i64, i64* %105, align 8
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %114

108:                                              ; preds = %99
  %109 = load i32*, i32** %11, align 8
  %110 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %111 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %110, i32 0, i32 1
  %112 = load i64, i64* %111, align 8
  %113 = call i32 @krb5_get_init_creds_opt_set_tkt_life(i32* %109, i64 %112)
  br label %114

114:                                              ; preds = %108, %99
  %115 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %116 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %115, i32 0, i32 2
  %117 = load i64, i64* %116, align 8
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %125

119:                                              ; preds = %114
  %120 = load i32*, i32** %11, align 8
  %121 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %122 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %121, i32 0, i32 2
  %123 = load i64, i64* %122, align 8
  %124 = call i32 @krb5_get_init_creds_opt_set_renew_life(i32* %120, i64 %123)
  br label %125

125:                                              ; preds = %119, %114
  %126 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %127 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = load i32, i32* @KCM_FLAGS_USE_CACHED_KEY, align 4
  %130 = and i32 %128, %129
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %143

132:                                              ; preds = %125
  %133 = load i32, i32* %5, align 4
  %134 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %135 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %134, i32 0, i32 6
  %136 = load i32, i32* %135, align 8
  %137 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %138 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %137, i32 0, i32 5
  %139 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %138, i32 0, i32 1
  %140 = load i8*, i8** %13, align 8
  %141 = load i32*, i32** %11, align 8
  %142 = call i64 @krb5_get_init_creds_keyblock(i32 %133, i32* %9, i32 %136, %struct.TYPE_13__* %139, i32 0, i8* %140, i32* %141)
  store i64 %142, i64* %8, align 8
  br label %155

143:                                              ; preds = %125
  %144 = load i32, i32* %5, align 4
  %145 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %146 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %145, i32 0, i32 6
  %147 = load i32, i32* %146, align 8
  %148 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %149 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %148, i32 0, i32 5
  %150 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %149, i32 0, i32 0
  %151 = load i32*, i32** %150, align 8
  %152 = load i8*, i8** %13, align 8
  %153 = load i32*, i32** %11, align 8
  %154 = call i64 @krb5_get_init_creds_keytab(i32 %144, i32* %9, i32 %147, i32* %151, i32 0, i8* %152, i32* %153)
  store i64 %154, i64* %8, align 8
  br label %155

155:                                              ; preds = %143, %132
  %156 = load i64, i64* %8, align 8
  %157 = icmp ne i64 %156, 0
  br i1 %157, label %158, label %172

158:                                              ; preds = %155
  %159 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %160 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %159, i32 0, i32 4
  %161 = load i32, i32* %160, align 4
  %162 = load i32, i32* %5, align 4
  %163 = load i64, i64* %8, align 8
  %164 = call i32 @krb5_get_err_text(i32 %162, i64 %163)
  %165 = call i32 (i32, i8*, i32, ...) @kcm_log(i32 0, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.5, i64 0, i64 0), i32 %161, i32 %164)
  %166 = load i8*, i8** %13, align 8
  %167 = icmp ne i8* %166, null
  br i1 %167, label %168, label %171

168:                                              ; preds = %158
  %169 = load i8*, i8** %13, align 8
  %170 = call i32 @free(i8* %169)
  br label %171

171:                                              ; preds = %168, %158
  br label %199

172:                                              ; preds = %155
  %173 = load i8*, i8** %13, align 8
  %174 = icmp ne i8* %173, null
  br i1 %174, label %175, label %178

175:                                              ; preds = %172
  %176 = load i8*, i8** %13, align 8
  %177 = call i32 @free(i8* %176)
  br label %178

178:                                              ; preds = %175, %172
  %179 = load i32, i32* %5, align 4
  %180 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %181 = call i32 @kcm_ccache_remove_creds_internal(i32 %179, %struct.TYPE_12__* %180)
  %182 = load i32, i32* %5, align 4
  %183 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %184 = load i32**, i32*** %7, align 8
  %185 = call i64 @kcm_ccache_store_cred_internal(i32 %182, %struct.TYPE_12__* %183, i32* %9, i32 0, i32** %184)
  store i64 %185, i64* %8, align 8
  %186 = load i64, i64* %8, align 8
  %187 = icmp ne i64 %186, 0
  br i1 %187, label %188, label %198

188:                                              ; preds = %178
  %189 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %190 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %189, i32 0, i32 4
  %191 = load i32, i32* %190, align 4
  %192 = load i32, i32* %5, align 4
  %193 = load i64, i64* %8, align 8
  %194 = call i32 @krb5_get_err_text(i32 %192, i64 %193)
  %195 = call i32 (i32, i8*, i32, ...) @kcm_log(i32 0, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.6, i64 0, i64 0), i32 %191, i32 %194)
  %196 = load i32, i32* %5, align 4
  %197 = call i32 @krb5_free_cred_contents(i32 %196, i32* %9)
  br label %199

198:                                              ; preds = %178
  br label %199

199:                                              ; preds = %198, %188, %171, %98
  %200 = load i32*, i32** %11, align 8
  %201 = icmp ne i32* %200, null
  br i1 %201, label %202, label %206

202:                                              ; preds = %199
  %203 = load i32, i32* %5, align 4
  %204 = load i32*, i32** %11, align 8
  %205 = call i32 @krb5_get_init_creds_opt_free(i32 %203, i32* %204)
  br label %206

206:                                              ; preds = %202, %199
  %207 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %208 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %207, i32 0, i32 3
  %209 = call i32 @HEIMDAL_MUTEX_unlock(i32* %208)
  %210 = load i64, i64* %8, align 8
  store i64 %210, i64* %4, align 8
  br label %211

211:                                              ; preds = %206, %78, %52
  %212 = load i64, i64* %4, align 8
  ret i64 %212
}

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @KCM_ASSERT_VALID(%struct.TYPE_12__*) #1

declare dso_local i32 @krb5_abortx(i32, i8*) #1

declare dso_local i32 @kcm_log(i32, i8*, i32, ...) #1

declare dso_local i32 @HEIMDAL_MUTEX_lock(i32*) #1

declare dso_local i32 @kcm_internal_ccache(i32, %struct.TYPE_12__*, i32*) #1

declare dso_local i64 @krb5_unparse_name(i32, i32*, i8**) #1

declare dso_local i32 @krb5_get_err_text(i32, i64) #1

declare dso_local i32 @krb5_principal_get_realm(i32, i32) #1

declare dso_local i64 @krb5_get_init_creds_opt_alloc(i32, i32**) #1

declare dso_local i32 @krb5_get_init_creds_opt_set_default_flags(i32, i8*, i32, i32*) #1

declare dso_local i32 @krb5_get_init_creds_opt_set_tkt_life(i32*, i64) #1

declare dso_local i32 @krb5_get_init_creds_opt_set_renew_life(i32*, i64) #1

declare dso_local i64 @krb5_get_init_creds_keyblock(i32, i32*, i32, %struct.TYPE_13__*, i32, i8*, i32*) #1

declare dso_local i64 @krb5_get_init_creds_keytab(i32, i32*, i32, i32*, i32, i8*, i32*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @kcm_ccache_remove_creds_internal(i32, %struct.TYPE_12__*) #1

declare dso_local i64 @kcm_ccache_store_cred_internal(i32, %struct.TYPE_12__*, i32*, i32, i32**) #1

declare dso_local i32 @krb5_free_cred_contents(i32, i32*) #1

declare dso_local i32 @krb5_get_init_creds_opt_free(i32, i32*) #1

declare dso_local i32 @HEIMDAL_MUTEX_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
