; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/kdc/extr_hprop.c_propagate_database.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/kdc/extr_hprop.c_propagate_database.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.prop_data = type { i32, i32*, i32 }

@NI_MAXSERV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%u\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"hprop\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"tcp\00", align 1
@HPROP_PORT = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [11 x i8] c"connect %s\00", align 1
@HPROP_NAME = common dso_local global i32 0, align 4
@KRB5_NT_SRV_HST = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [28 x i8] c"krb5_sname_to_principal(%s)\00", align 1
@local_realm = common dso_local global i64 0, align 8
@HPROP_VERSION = common dso_local global i32 0, align 4
@AP_OPTS_MUTUAL_REQUIRED = common dso_local global i32 0, align 4
@AP_OPTS_USE_SUBKEY = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [19 x i8] c"krb5_sendauth (%s)\00", align 1
@.str.6 = private unnamed_addr constant [26 x i8] c"iterate to host %s failed\00", align 1
@.str.7 = private unnamed_addr constant [24 x i8] c"krb5_write_priv_message\00", align 1
@.str.8 = private unnamed_addr constant [27 x i8] c"krb5_read_priv_message: %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i8*, i32*, i32, i32, i32, i8**)* @propagate_database to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @propagate_database(i32 %0, i32 %1, i8* %2, i32* %3, i32 %4, i32 %5, i32 %6, i8** %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i8**, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32*, align 8
  %23 = alloca i32, align 4
  %24 = alloca %struct.prop_data, align 8
  %25 = alloca i32, align 4
  %26 = alloca i8*, align 8
  %27 = alloca i8*, align 8
  %28 = alloca i64, align 8
  %29 = alloca i8*, align 8
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  store i32 %0, i32* %10, align 4
  store i32 %1, i32* %11, align 4
  store i8* %2, i8** %12, align 8
  store i32* %3, i32** %13, align 8
  store i32 %4, i32* %14, align 4
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store i8** %7, i8*** %17, align 8
  store i32 0, i32* %21, align 4
  %32 = load i32, i32* %15, align 4
  store i32 %32, i32* %20, align 4
  br label %33

33:                                               ; preds = %190, %8
  %34 = load i32, i32* %20, align 4
  %35 = load i32, i32* %16, align 4
  %36 = icmp slt i32 %34, %35
  br i1 %36, label %37, label %193

37:                                               ; preds = %33
  %38 = load i32, i32* @NI_MAXSERV, align 4
  %39 = zext i32 %38 to i64
  %40 = call i8* @llvm.stacksave()
  store i8* %40, i8** %27, align 8
  %41 = alloca i8, i64 %39, align 16
  store i64 %39, i64* %28, align 8
  %42 = load i8**, i8*** %17, align 8
  %43 = load i32, i32* %20, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i8*, i8** %42, i64 %44
  %46 = load i8*, i8** %45, align 8
  store i8* %46, i8** %29, align 8
  %47 = load i8*, i8** %29, align 8
  %48 = call i8* @strchr(i8* %47, i8 signext 58)
  store i8* %48, i8** %26, align 8
  %49 = load i8*, i8** %26, align 8
  %50 = icmp eq i8* %49, null
  br i1 %50, label %51, label %58

51:                                               ; preds = %37
  %52 = trunc i64 %39 to i32
  %53 = load i32, i32* %10, align 4
  %54 = load i32, i32* @HPROP_PORT, align 4
  %55 = call i32 @krb5_getportbyname(i32 %53, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 %54)
  %56 = call i32 @ntohs(i32 %55)
  %57 = call i32 @snprintf(i8* %41, i32 %52, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %56)
  store i8* %41, i8** %26, align 8
  br label %61

58:                                               ; preds = %37
  %59 = load i8*, i8** %26, align 8
  %60 = getelementptr inbounds i8, i8* %59, i32 1
  store i8* %60, i8** %26, align 8
  store i8 0, i8* %59, align 1
  br label %61

61:                                               ; preds = %58, %51
  %62 = load i32, i32* %10, align 4
  %63 = load i8*, i8** %29, align 8
  %64 = load i8*, i8** %26, align 8
  %65 = call i32 @open_socket(i32 %62, i8* %63, i8* %64)
  store i32 %65, i32* %23, align 4
  %66 = load i32, i32* %23, align 4
  %67 = icmp slt i32 %66, 0
  br i1 %67, label %68, label %75

68:                                               ; preds = %61
  %69 = load i32, i32* %21, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %21, align 4
  %71 = load i32, i32* %10, align 4
  %72 = load i32, i32* @errno, align 4
  %73 = load i8*, i8** %29, align 8
  %74 = call i32 (i32, i32, i8*, ...) @krb5_warn(i32 %71, i32 %72, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i8* %73)
  store i32 4, i32* %30, align 4
  br label %186

75:                                               ; preds = %61
  %76 = load i32, i32* %10, align 4
  %77 = load i8**, i8*** %17, align 8
  %78 = load i32, i32* %20, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i8*, i8** %77, i64 %79
  %81 = load i8*, i8** %80, align 8
  %82 = load i32, i32* @HPROP_NAME, align 4
  %83 = load i32, i32* @KRB5_NT_SRV_HST, align 4
  %84 = call i32 @krb5_sname_to_principal(i32 %76, i8* %81, i32 %82, i32 %83, i32* %18)
  store i32 %84, i32* %19, align 4
  %85 = load i32, i32* %19, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %96

87:                                               ; preds = %75
  %88 = load i32, i32* %21, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %21, align 4
  %90 = load i32, i32* %10, align 4
  %91 = load i32, i32* %19, align 4
  %92 = load i8*, i8** %29, align 8
  %93 = call i32 (i32, i32, i8*, ...) @krb5_warn(i32 %90, i32 %91, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0), i8* %92)
  %94 = load i32, i32* %23, align 4
  %95 = call i32 @close(i32 %94)
  store i32 4, i32* %30, align 4
  br label %186

96:                                               ; preds = %75
  %97 = load i64, i64* @local_realm, align 8
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %108

99:                                               ; preds = %96
  %100 = load i32, i32* %10, align 4
  %101 = call i32 @krb5_get_default_realm(i32 %100, i32* %31)
  %102 = load i32, i32* %10, align 4
  %103 = load i32, i32* %18, align 4
  %104 = load i32, i32* %31, align 4
  %105 = call i32 @krb5_principal_set_realm(i32 %102, i32 %103, i32 %104)
  %106 = load i32, i32* %31, align 4
  %107 = call i32 @krb5_xfree(i32 %106)
  br label %108

108:                                              ; preds = %99, %96
  store i32* null, i32** %22, align 8
  %109 = load i32, i32* %10, align 4
  %110 = load i32, i32* @HPROP_VERSION, align 4
  %111 = load i32, i32* %18, align 4
  %112 = load i32, i32* @AP_OPTS_MUTUAL_REQUIRED, align 4
  %113 = load i32, i32* @AP_OPTS_USE_SUBKEY, align 4
  %114 = or i32 %112, %113
  %115 = load i32, i32* %14, align 4
  %116 = call i32 @krb5_sendauth(i32 %109, i32** %22, i32* %23, i32 %110, i32* null, i32 %111, i32 %114, i32* null, i32* null, i32 %115, i32* null, i32* null, i32* null)
  store i32 %116, i32* %19, align 4
  %117 = load i32, i32* %10, align 4
  %118 = load i32, i32* %18, align 4
  %119 = call i32 @krb5_free_principal(i32 %117, i32 %118)
  %120 = load i32, i32* %19, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %131

122:                                              ; preds = %108
  %123 = load i32, i32* %21, align 4
  %124 = add nsw i32 %123, 1
  store i32 %124, i32* %21, align 4
  %125 = load i32, i32* %10, align 4
  %126 = load i32, i32* %19, align 4
  %127 = load i8*, i8** %29, align 8
  %128 = call i32 (i32, i32, i8*, ...) @krb5_warn(i32 %125, i32 %126, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0), i8* %127)
  %129 = load i32, i32* %23, align 4
  %130 = call i32 @close(i32 %129)
  br label %180

131:                                              ; preds = %108
  %132 = load i32, i32* %10, align 4
  %133 = getelementptr inbounds %struct.prop_data, %struct.prop_data* %24, i32 0, i32 2
  store i32 %132, i32* %133, align 8
  %134 = load i32*, i32** %22, align 8
  %135 = getelementptr inbounds %struct.prop_data, %struct.prop_data* %24, i32 0, i32 1
  store i32* %134, i32** %135, align 8
  %136 = load i32, i32* %23, align 4
  %137 = getelementptr inbounds %struct.prop_data, %struct.prop_data* %24, i32 0, i32 0
  store i32 %136, i32* %137, align 8
  %138 = load i32, i32* %10, align 4
  %139 = load i8*, i8** %12, align 8
  %140 = load i32*, i32** %13, align 8
  %141 = load i32, i32* %11, align 4
  %142 = call i32 @iterate(i32 %138, i8* %139, i32* %140, i32 %141, %struct.prop_data* %24)
  store i32 %142, i32* %19, align 4
  %143 = load i32, i32* %19, align 4
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %151

145:                                              ; preds = %131
  %146 = load i32, i32* %10, align 4
  %147 = load i8*, i8** %29, align 8
  %148 = call i32 @krb5_warnx(i32 %146, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i64 0, i64 0), i8* %147)
  %149 = load i32, i32* %21, align 4
  %150 = add nsw i32 %149, 1
  store i32 %150, i32* %21, align 4
  br label %180

151:                                              ; preds = %131
  %152 = call i32 @krb5_data_zero(i32* %25)
  %153 = load i32, i32* %10, align 4
  %154 = load i32*, i32** %22, align 8
  %155 = call i32 @krb5_write_priv_message(i32 %153, i32* %154, i32* %23, i32* %25)
  store i32 %155, i32* %19, align 4
  %156 = load i32, i32* %19, align 4
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %164

158:                                              ; preds = %151
  %159 = load i32, i32* %10, align 4
  %160 = load i32, i32* %19, align 4
  %161 = call i32 (i32, i32, i8*, ...) @krb5_warn(i32 %159, i32 %160, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.7, i64 0, i64 0))
  %162 = load i32, i32* %21, align 4
  %163 = add nsw i32 %162, 1
  store i32 %163, i32* %21, align 4
  br label %180

164:                                              ; preds = %151
  %165 = load i32, i32* %10, align 4
  %166 = load i32*, i32** %22, align 8
  %167 = call i32 @krb5_read_priv_message(i32 %165, i32* %166, i32* %23, i32* %25)
  store i32 %167, i32* %19, align 4
  %168 = load i32, i32* %19, align 4
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %170, label %177

170:                                              ; preds = %164
  %171 = load i32, i32* %10, align 4
  %172 = load i32, i32* %19, align 4
  %173 = load i8*, i8** %29, align 8
  %174 = call i32 (i32, i32, i8*, ...) @krb5_warn(i32 %171, i32 %172, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.8, i64 0, i64 0), i8* %173)
  %175 = load i32, i32* %21, align 4
  %176 = add nsw i32 %175, 1
  store i32 %176, i32* %21, align 4
  br label %180

177:                                              ; preds = %164
  %178 = call i32 @krb5_data_free(i32* %25)
  br label %179

179:                                              ; preds = %177
  br label %180

180:                                              ; preds = %179, %170, %158, %145, %122
  %181 = load i32, i32* %10, align 4
  %182 = load i32*, i32** %22, align 8
  %183 = call i32 @krb5_auth_con_free(i32 %181, i32* %182)
  %184 = load i32, i32* %23, align 4
  %185 = call i32 @close(i32 %184)
  store i32 0, i32* %30, align 4
  br label %186

186:                                              ; preds = %180, %87, %68
  %187 = load i8*, i8** %27, align 8
  call void @llvm.stackrestore(i8* %187)
  %188 = load i32, i32* %30, align 4
  switch i32 %188, label %200 [
    i32 0, label %189
    i32 4, label %190
  ]

189:                                              ; preds = %186
  br label %190

190:                                              ; preds = %189, %186
  %191 = load i32, i32* %20, align 4
  %192 = add nsw i32 %191, 1
  store i32 %192, i32* %20, align 4
  br label %33

193:                                              ; preds = %33
  %194 = load i32, i32* %21, align 4
  %195 = icmp ne i32 %194, 0
  br i1 %195, label %196, label %197

196:                                              ; preds = %193
  store i32 1, i32* %9, align 4
  br label %198

197:                                              ; preds = %193
  store i32 0, i32* %9, align 4
  br label %198

198:                                              ; preds = %197, %196
  %199 = load i32, i32* %9, align 4
  ret i32 %199

200:                                              ; preds = %186
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i8* @strchr(i8*, i8 signext) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #2

declare dso_local i32 @ntohs(i32) #2

declare dso_local i32 @krb5_getportbyname(i32, i8*, i8*, i32) #2

declare dso_local i32 @open_socket(i32, i8*, i8*) #2

declare dso_local i32 @krb5_warn(i32, i32, i8*, ...) #2

declare dso_local i32 @krb5_sname_to_principal(i32, i8*, i32, i32, i32*) #2

declare dso_local i32 @close(i32) #2

declare dso_local i32 @krb5_get_default_realm(i32, i32*) #2

declare dso_local i32 @krb5_principal_set_realm(i32, i32, i32) #2

declare dso_local i32 @krb5_xfree(i32) #2

declare dso_local i32 @krb5_sendauth(i32, i32**, i32*, i32, i32*, i32, i32, i32*, i32*, i32, i32*, i32*, i32*) #2

declare dso_local i32 @krb5_free_principal(i32, i32) #2

declare dso_local i32 @iterate(i32, i8*, i32*, i32, %struct.prop_data*) #2

declare dso_local i32 @krb5_warnx(i32, i8*, i8*) #2

declare dso_local i32 @krb5_data_zero(i32*) #2

declare dso_local i32 @krb5_write_priv_message(i32, i32*, i32*, i32*) #2

declare dso_local i32 @krb5_read_priv_message(i32, i32*, i32*, i32*) #2

declare dso_local i32 @krb5_data_free(i32*) #2

declare dso_local i32 @krb5_auth_con_free(i32, i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
