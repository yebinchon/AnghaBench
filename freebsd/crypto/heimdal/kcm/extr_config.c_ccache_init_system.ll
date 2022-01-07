; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/kcm/extr_config.c_ccache_init_system.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/kcm/extr_config.c_ccache_init_system.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, i64, i32, %struct.TYPE_7__, i32, i32, i32 }
%struct.TYPE_7__ = type { i32 }

@system_cache_name = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [8 x i8] c"cc_name\00", align 1
@kcm_context = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"SYSTEM\00", align 1
@KCM_FLAGS_OWNER_IS_SYSTEM = common dso_local global i32 0, align 4
@KCM_FLAGS_USE_KEYTAB = common dso_local global i32 0, align 4
@system_principal = common dso_local global i32* null, align 8
@system_server = common dso_local global i32* null, align 8
@.str.2 = private unnamed_addr constant [7 x i8] c"server\00", align 1
@system_keytab = common dso_local global i32* null, align 8
@.str.3 = private unnamed_addr constant [12 x i8] c"keytab_name\00", align 1
@renew_life = common dso_local global i8* null, align 8
@.str.4 = private unnamed_addr constant [11 x i8] c"renew_life\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"1 month\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"s\00", align 1
@EINVAL = common dso_local global i64 0, align 8
@ticket_life = common dso_local global i8* null, align 8
@.str.7 = private unnamed_addr constant [12 x i8] c"ticket_life\00", align 1
@system_perms = common dso_local global i32* null, align 8
@.str.8 = private unnamed_addr constant [5 x i8] c"mode\00", align 1
@.str.9 = private unnamed_addr constant [3 x i8] c"%o\00", align 1
@disallow_getting_krbtgt = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [4 x i8] c"kcm\00", align 1
@.str.11 = private unnamed_addr constant [24 x i8] c"disallow-getting-krbtgt\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 ()* @ccache_init_system to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ccache_init_system() #0 {
  %1 = alloca i64, align 8
  %2 = alloca %struct.TYPE_8__*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = load i8*, i8** @system_cache_name, align 8
  %6 = icmp eq i8* %5, null
  br i1 %6, label %7, label %9

7:                                                ; preds = %0
  %8 = call i8* @kcm_system_config_get_string(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  store i8* %8, i8** @system_cache_name, align 8
  br label %9

9:                                                ; preds = %7, %0
  %10 = load i32, i32* @kcm_context, align 4
  %11 = load i8*, i8** @system_cache_name, align 8
  %12 = icmp ne i8* %11, null
  br i1 %12, label %13, label %15

13:                                               ; preds = %9
  %14 = load i8*, i8** @system_cache_name, align 8
  br label %16

15:                                               ; preds = %9
  br label %16

16:                                               ; preds = %15, %13
  %17 = phi i8* [ %14, %13 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), %15 ]
  %18 = call i64 @kcm_ccache_new(i32 %10, i8* %17, %struct.TYPE_8__** %2)
  store i64 %18, i64* %3, align 8
  %19 = load i64, i64* %3, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %16
  %22 = load i64, i64* %3, align 8
  store i64 %22, i64* %1, align 8
  br label %192

23:                                               ; preds = %16
  %24 = load i32, i32* @KCM_FLAGS_OWNER_IS_SYSTEM, align 4
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 6
  %27 = load i32, i32* %26, align 8
  %28 = or i32 %27, %24
  store i32 %28, i32* %26, align 8
  %29 = load i32, i32* @KCM_FLAGS_USE_KEYTAB, align 4
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 6
  %32 = load i32, i32* %31, align 8
  %33 = or i32 %32, %29
  store i32 %33, i32* %31, align 8
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %35 = call i64 @parse_owners(%struct.TYPE_8__* %34)
  store i64 %35, i64* %3, align 8
  %36 = load i64, i64* %3, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %23
  %39 = load i64, i64* %3, align 8
  store i64 %39, i64* %1, align 8
  br label %192

40:                                               ; preds = %23
  %41 = load i32, i32* @kcm_context, align 4
  %42 = load i32*, i32** @system_principal, align 8
  %43 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 5
  %45 = call i64 @krb5_parse_name(i32 %41, i32* %42, i32* %44)
  store i64 %45, i64* %3, align 8
  %46 = load i64, i64* %3, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %53

48:                                               ; preds = %40
  %49 = load i32, i32* @kcm_context, align 4
  %50 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %51 = call i32 @kcm_release_ccache(i32 %49, %struct.TYPE_8__* %50)
  %52 = load i64, i64* %3, align 8
  store i64 %52, i64* %1, align 8
  br label %192

53:                                               ; preds = %40
  %54 = load i32*, i32** @system_server, align 8
  %55 = icmp eq i32* %54, null
  br i1 %55, label %56, label %59

56:                                               ; preds = %53
  %57 = call i8* @kcm_system_config_get_string(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %58 = bitcast i8* %57 to i32*
  store i32* %58, i32** @system_server, align 8
  br label %59

59:                                               ; preds = %56, %53
  %60 = load i32*, i32** @system_server, align 8
  %61 = icmp ne i32* %60, null
  br i1 %61, label %62, label %76

62:                                               ; preds = %59
  %63 = load i32, i32* @kcm_context, align 4
  %64 = load i32*, i32** @system_server, align 8
  %65 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i32 0, i32 4
  %67 = call i64 @krb5_parse_name(i32 %63, i32* %64, i32* %66)
  store i64 %67, i64* %3, align 8
  %68 = load i64, i64* %3, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %75

70:                                               ; preds = %62
  %71 = load i32, i32* @kcm_context, align 4
  %72 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %73 = call i32 @kcm_release_ccache(i32 %71, %struct.TYPE_8__* %72)
  %74 = load i64, i64* %3, align 8
  store i64 %74, i64* %1, align 8
  br label %192

75:                                               ; preds = %62
  br label %76

76:                                               ; preds = %75, %59
  %77 = load i32*, i32** @system_keytab, align 8
  %78 = icmp eq i32* %77, null
  br i1 %78, label %79, label %82

79:                                               ; preds = %76
  %80 = call i8* @kcm_system_config_get_string(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0))
  %81 = bitcast i8* %80 to i32*
  store i32* %81, i32** @system_keytab, align 8
  br label %82

82:                                               ; preds = %79, %76
  %83 = load i32*, i32** @system_keytab, align 8
  %84 = icmp ne i32* %83, null
  br i1 %84, label %85, label %92

85:                                               ; preds = %82
  %86 = load i32, i32* @kcm_context, align 4
  %87 = load i32*, i32** @system_keytab, align 8
  %88 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %89 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %88, i32 0, i32 3
  %90 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %89, i32 0, i32 0
  %91 = call i64 @krb5_kt_resolve(i32 %86, i32* %87, i32* %90)
  store i64 %91, i64* %3, align 8
  br label %98

92:                                               ; preds = %82
  %93 = load i32, i32* @kcm_context, align 4
  %94 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %95 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %94, i32 0, i32 3
  %96 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %95, i32 0, i32 0
  %97 = call i64 @krb5_kt_default(i32 %93, i32* %96)
  store i64 %97, i64* %3, align 8
  br label %98

98:                                               ; preds = %92, %85
  %99 = load i64, i64* %3, align 8
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %106

101:                                              ; preds = %98
  %102 = load i32, i32* @kcm_context, align 4
  %103 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %104 = call i32 @kcm_release_ccache(i32 %102, %struct.TYPE_8__* %103)
  %105 = load i64, i64* %3, align 8
  store i64 %105, i64* %1, align 8
  br label %192

106:                                              ; preds = %98
  %107 = load i8*, i8** @renew_life, align 8
  %108 = icmp eq i8* %107, null
  br i1 %108, label %109, label %111

109:                                              ; preds = %106
  %110 = call i8* @kcm_system_config_get_string(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0))
  store i8* %110, i8** @renew_life, align 8
  br label %111

111:                                              ; preds = %109, %106
  %112 = load i8*, i8** @renew_life, align 8
  %113 = icmp eq i8* %112, null
  br i1 %113, label %114, label %115

114:                                              ; preds = %111
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i8** @renew_life, align 8
  br label %115

115:                                              ; preds = %114, %111
  %116 = load i8*, i8** @renew_life, align 8
  %117 = icmp ne i8* %116, null
  br i1 %117, label %118, label %134

118:                                              ; preds = %115
  %119 = load i8*, i8** @renew_life, align 8
  %120 = call i8* @parse_time(i8* %119, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0))
  %121 = ptrtoint i8* %120 to i64
  %122 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %123 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %122, i32 0, i32 0
  store i64 %121, i64* %123, align 8
  %124 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %125 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %124, i32 0, i32 0
  %126 = load i64, i64* %125, align 8
  %127 = icmp slt i64 %126, 0
  br i1 %127, label %128, label %133

128:                                              ; preds = %118
  %129 = load i32, i32* @kcm_context, align 4
  %130 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %131 = call i32 @kcm_release_ccache(i32 %129, %struct.TYPE_8__* %130)
  %132 = load i64, i64* @EINVAL, align 8
  store i64 %132, i64* %1, align 8
  br label %192

133:                                              ; preds = %118
  br label %134

134:                                              ; preds = %133, %115
  %135 = load i8*, i8** @ticket_life, align 8
  %136 = icmp eq i8* %135, null
  br i1 %136, label %137, label %139

137:                                              ; preds = %134
  %138 = call i8* @kcm_system_config_get_string(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i64 0, i64 0))
  store i8* %138, i8** @ticket_life, align 8
  br label %139

139:                                              ; preds = %137, %134
  %140 = load i8*, i8** @ticket_life, align 8
  %141 = icmp ne i8* %140, null
  br i1 %141, label %142, label %158

142:                                              ; preds = %139
  %143 = load i8*, i8** @ticket_life, align 8
  %144 = call i8* @parse_time(i8* %143, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0))
  %145 = ptrtoint i8* %144 to i64
  %146 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %147 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %146, i32 0, i32 1
  store i64 %145, i64* %147, align 8
  %148 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %149 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %148, i32 0, i32 1
  %150 = load i64, i64* %149, align 8
  %151 = icmp slt i64 %150, 0
  br i1 %151, label %152, label %157

152:                                              ; preds = %142
  %153 = load i32, i32* @kcm_context, align 4
  %154 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %155 = call i32 @kcm_release_ccache(i32 %153, %struct.TYPE_8__* %154)
  %156 = load i64, i64* @EINVAL, align 8
  store i64 %156, i64* %1, align 8
  br label %192

157:                                              ; preds = %142
  br label %158

158:                                              ; preds = %157, %139
  %159 = load i32*, i32** @system_perms, align 8
  %160 = icmp eq i32* %159, null
  br i1 %160, label %161, label %164

161:                                              ; preds = %158
  %162 = call i8* @kcm_system_config_get_string(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0))
  %163 = bitcast i8* %162 to i32*
  store i32* %163, i32** @system_perms, align 8
  br label %164

164:                                              ; preds = %161, %158
  %165 = load i32*, i32** @system_perms, align 8
  %166 = icmp ne i32* %165, null
  br i1 %166, label %167, label %177

167:                                              ; preds = %164
  %168 = load i32*, i32** @system_perms, align 8
  %169 = call i32 @sscanf(i32* %168, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i64 0, i64 0), i32* %4)
  %170 = icmp ne i32 %169, 1
  br i1 %170, label %171, label %173

171:                                              ; preds = %167
  %172 = load i64, i64* @EINVAL, align 8
  store i64 %172, i64* %1, align 8
  br label %192

173:                                              ; preds = %167
  %174 = load i32, i32* %4, align 4
  %175 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %176 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %175, i32 0, i32 2
  store i32 %174, i32* %176, align 8
  br label %177

177:                                              ; preds = %173, %164
  %178 = load i32, i32* @disallow_getting_krbtgt, align 4
  %179 = icmp eq i32 %178, -1
  br i1 %179, label %180, label %184

180:                                              ; preds = %177
  %181 = load i32, i32* @kcm_context, align 4
  %182 = load i32, i32* @FALSE, align 4
  %183 = call i32 @krb5_config_get_bool_default(i32 %181, i32* null, i32 %182, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.11, i64 0, i64 0), i32* null)
  store i32 %183, i32* @disallow_getting_krbtgt, align 4
  br label %184

184:                                              ; preds = %180, %177
  %185 = load i32, i32* @kcm_context, align 4
  %186 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %187 = call i64 @kcm_ccache_enqueue_default(i32 %185, %struct.TYPE_8__* %186, i32* null)
  store i64 %187, i64* %3, align 8
  %188 = load i32, i32* @kcm_context, align 4
  %189 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %190 = call i32 @kcm_release_ccache(i32 %188, %struct.TYPE_8__* %189)
  %191 = load i64, i64* %3, align 8
  store i64 %191, i64* %1, align 8
  br label %192

192:                                              ; preds = %184, %171, %152, %128, %101, %70, %48, %38, %21
  %193 = load i64, i64* %1, align 8
  ret i64 %193
}

declare dso_local i8* @kcm_system_config_get_string(i8*) #1

declare dso_local i64 @kcm_ccache_new(i32, i8*, %struct.TYPE_8__**) #1

declare dso_local i64 @parse_owners(%struct.TYPE_8__*) #1

declare dso_local i64 @krb5_parse_name(i32, i32*, i32*) #1

declare dso_local i32 @kcm_release_ccache(i32, %struct.TYPE_8__*) #1

declare dso_local i64 @krb5_kt_resolve(i32, i32*, i32*) #1

declare dso_local i64 @krb5_kt_default(i32, i32*) #1

declare dso_local i8* @parse_time(i8*, i8*) #1

declare dso_local i32 @sscanf(i32*, i8*, i32*) #1

declare dso_local i32 @krb5_config_get_bool_default(i32, i32*, i32, i8*, i8*, i32*) #1

declare dso_local i64 @kcm_ccache_enqueue_default(i32, %struct.TYPE_8__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
