; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/dnscrypt/extr_dnscrypt.c_dnsc_parse_keys.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/dnscrypt/extr_dnscrypt.c_dnsc_parse_keys.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dnsc_env = type { i32, i32, %struct.TYPE_4__*, %struct.TYPE_5__*, %struct.TYPE_6__* }
%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.TYPE_5__ = type { i32*, i32*, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, i64 }
%struct.config_file = type { %struct.config_strlist* }
%struct.config_strlist = type { i32, %struct.config_strlist* }

@crypto_box_SECRETKEYBYTES = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"dnsc_parse_keys: failed to load %s: %s\00", align 1
@errno = common dso_local global i32 0, align 4
@VERB_OPS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"Loaded key %s\00", align 1
@.str.2 = private unnamed_addr constant [55 x i8] c"dnsc_parse_keys: could not generate public key from %s\00", align 1
@.str.3 = private unnamed_addr constant [40 x i8] c"Crypt public key fingerprint for %s: %s\00", align 1
@crypto_box_PUBLICKEYBYTES = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [9 x i8] c"Using %s\00", align 1
@.str.5 = private unnamed_addr constant [61 x i8] c"Certificate for XChacha20 but libsodium does not support it.\00", align 1
@.str.6 = private unnamed_addr constant [89 x i8] c"dnsc_parse_keys: could not match certificate for key %s. Unable to determine ES version.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dnsc_env*, %struct.config_file*)* @dnsc_parse_keys to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dnsc_parse_keys(%struct.dnsc_env* %0, %struct.config_file* %1) #0 {
  %3 = alloca %struct.dnsc_env*, align 8
  %4 = alloca %struct.config_file*, align 8
  %5 = alloca %struct.config_strlist*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca [80 x i8], align 16
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_6__*, align 8
  %13 = alloca %struct.TYPE_5__*, align 8
  store %struct.dnsc_env* %0, %struct.dnsc_env** %3, align 8
  store %struct.config_file* %1, %struct.config_file** %4, align 8
  %14 = load %struct.dnsc_env*, %struct.dnsc_env** %3, align 8
  %15 = getelementptr inbounds %struct.dnsc_env, %struct.dnsc_env* %14, i32 0, i32 0
  store i32 0, i32* %15, align 8
  %16 = load %struct.config_file*, %struct.config_file** %4, align 8
  %17 = getelementptr inbounds %struct.config_file, %struct.config_file* %16, i32 0, i32 0
  %18 = load %struct.config_strlist*, %struct.config_strlist** %17, align 8
  store %struct.config_strlist* %18, %struct.config_strlist** %5, align 8
  br label %19

19:                                               ; preds = %27, %2
  %20 = load %struct.config_strlist*, %struct.config_strlist** %5, align 8
  %21 = icmp ne %struct.config_strlist* %20, null
  br i1 %21, label %22, label %31

22:                                               ; preds = %19
  %23 = load %struct.dnsc_env*, %struct.dnsc_env** %3, align 8
  %24 = getelementptr inbounds %struct.dnsc_env, %struct.dnsc_env* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = add i32 %25, 1
  store i32 %26, i32* %24, align 8
  br label %27

27:                                               ; preds = %22
  %28 = load %struct.config_strlist*, %struct.config_strlist** %5, align 8
  %29 = getelementptr inbounds %struct.config_strlist, %struct.config_strlist* %28, i32 0, i32 1
  %30 = load %struct.config_strlist*, %struct.config_strlist** %29, align 8
  store %struct.config_strlist* %30, %struct.config_strlist** %5, align 8
  br label %19

31:                                               ; preds = %19
  %32 = load %struct.dnsc_env*, %struct.dnsc_env** %3, align 8
  %33 = getelementptr inbounds %struct.dnsc_env, %struct.dnsc_env* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = call i8* @sodium_allocarray(i32 %34, i32 16)
  %36 = bitcast i8* %35 to %struct.TYPE_6__*
  %37 = load %struct.dnsc_env*, %struct.dnsc_env** %3, align 8
  %38 = getelementptr inbounds %struct.dnsc_env, %struct.dnsc_env* %37, i32 0, i32 4
  store %struct.TYPE_6__* %36, %struct.TYPE_6__** %38, align 8
  %39 = load %struct.dnsc_env*, %struct.dnsc_env** %3, align 8
  %40 = getelementptr inbounds %struct.dnsc_env, %struct.dnsc_env* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = call i8* @sodium_allocarray(i32 %41, i32 24)
  %43 = bitcast i8* %42 to %struct.TYPE_5__*
  %44 = load %struct.dnsc_env*, %struct.dnsc_env** %3, align 8
  %45 = getelementptr inbounds %struct.dnsc_env, %struct.dnsc_env* %44, i32 0, i32 3
  store %struct.TYPE_5__* %43, %struct.TYPE_5__** %45, align 8
  store i64 0, i64* %6, align 8
  store i64 0, i64* %7, align 8
  %46 = load %struct.config_file*, %struct.config_file** %4, align 8
  %47 = getelementptr inbounds %struct.config_file, %struct.config_file* %46, i32 0, i32 0
  %48 = load %struct.config_strlist*, %struct.config_strlist** %47, align 8
  store %struct.config_strlist* %48, %struct.config_strlist** %5, align 8
  br label %49

49:                                               ; preds = %203, %31
  %50 = load %struct.config_strlist*, %struct.config_strlist** %5, align 8
  %51 = icmp ne %struct.config_strlist* %50, null
  br i1 %51, label %52, label %209

52:                                               ; preds = %49
  store i32 0, i32* %11, align 4
  %53 = load %struct.dnsc_env*, %struct.dnsc_env** %3, align 8
  %54 = getelementptr inbounds %struct.dnsc_env, %struct.dnsc_env* %53, i32 0, i32 4
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %54, align 8
  %56 = load i64, i64* %7, align 8
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i64 %56
  store %struct.TYPE_6__* %57, %struct.TYPE_6__** %12, align 8
  %58 = load %struct.config_file*, %struct.config_file** %4, align 8
  %59 = load %struct.config_strlist*, %struct.config_strlist** %5, align 8
  %60 = getelementptr inbounds %struct.config_strlist, %struct.config_strlist* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = call i8* @dnsc_chroot_path(%struct.config_file* %58, i32 %61)
  store i8* %62, i8** %9, align 8
  %63 = load i8*, i8** %9, align 8
  %64 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = inttoptr i64 %66 to i8*
  %68 = load i32, i32* @crypto_box_SECRETKEYBYTES, align 4
  %69 = call i64 @dnsc_read_from_file(i8* %63, i8* %67, i32 %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %78

71:                                               ; preds = %52
  %72 = load %struct.config_strlist*, %struct.config_strlist** %5, align 8
  %73 = getelementptr inbounds %struct.config_strlist, %struct.config_strlist* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = load i32, i32* @errno, align 4
  %76 = call i32 @strerror(i32 %75)
  %77 = call i32 (i8*, ...) @fatal_exit(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %74, i32 %76)
  br label %78

78:                                               ; preds = %71, %52
  %79 = load i32, i32* @VERB_OPS, align 4
  %80 = load %struct.config_strlist*, %struct.config_strlist** %5, align 8
  %81 = getelementptr inbounds %struct.config_strlist, %struct.config_strlist* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = call i32 (i32, i8*, i32, ...) @verbose(i32 %79, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 %82)
  %84 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i32 0, i32 1
  %89 = load i64, i64* %88, align 8
  %90 = call i64 @crypto_scalarmult_base(i32 %86, i64 %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %97

92:                                               ; preds = %78
  %93 = load %struct.config_strlist*, %struct.config_strlist** %5, align 8
  %94 = getelementptr inbounds %struct.config_strlist, %struct.config_strlist* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = call i32 (i8*, ...) @fatal_exit(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.2, i64 0, i64 0), i32 %95)
  br label %97

97:                                               ; preds = %92, %78
  %98 = getelementptr inbounds [80 x i8], [80 x i8]* %10, i64 0, i64 0
  %99 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %100 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = call i32 @dnsc_key_to_fingerprint(i8* %98, i32 %101)
  %103 = load i32, i32* @VERB_OPS, align 4
  %104 = load %struct.config_strlist*, %struct.config_strlist** %5, align 8
  %105 = getelementptr inbounds %struct.config_strlist, %struct.config_strlist* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = getelementptr inbounds [80 x i8], [80 x i8]* %10, i64 0, i64 0
  %108 = call i32 (i32, i8*, i32, ...) @verbose(i32 %103, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i64 0, i64 0), i32 %106, i8* %107)
  store i64 0, i64* %8, align 8
  br label %109

109:                                              ; preds = %191, %97
  %110 = load i64, i64* %8, align 8
  %111 = load %struct.dnsc_env*, %struct.dnsc_env** %3, align 8
  %112 = getelementptr inbounds %struct.dnsc_env, %struct.dnsc_env* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = zext i32 %113 to i64
  %115 = icmp ult i64 %110, %114
  br i1 %115, label %116, label %194

116:                                              ; preds = %109
  %117 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %118 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = load %struct.dnsc_env*, %struct.dnsc_env** %3, align 8
  %121 = getelementptr inbounds %struct.dnsc_env, %struct.dnsc_env* %120, i32 0, i32 2
  %122 = load %struct.TYPE_4__*, %struct.TYPE_4__** %121, align 8
  %123 = load i64, i64* %8, align 8
  %124 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %122, i64 %123
  %125 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %124, i32 0, i32 2
  %126 = load i32, i32* %125, align 4
  %127 = load i32, i32* @crypto_box_PUBLICKEYBYTES, align 4
  %128 = call i64 @memcmp(i32 %119, i32 %126, i32 %127)
  %129 = icmp eq i64 %128, 0
  br i1 %129, label %130, label %190

130:                                              ; preds = %116
  %131 = load %struct.dnsc_env*, %struct.dnsc_env** %3, align 8
  %132 = getelementptr inbounds %struct.dnsc_env, %struct.dnsc_env* %131, i32 0, i32 3
  %133 = load %struct.TYPE_5__*, %struct.TYPE_5__** %132, align 8
  %134 = load i64, i64* %6, align 8
  %135 = add i64 %134, 1
  store i64 %135, i64* %6, align 8
  %136 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %133, i64 %134
  store %struct.TYPE_5__* %136, %struct.TYPE_5__** %13, align 8
  store i32 1, i32* %11, align 4
  %137 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %138 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %139 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %138, i32 0, i32 2
  store %struct.TYPE_6__* %137, %struct.TYPE_6__** %139, align 8
  %140 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %141 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %140, i32 0, i32 0
  %142 = load i32*, i32** %141, align 8
  %143 = load %struct.dnsc_env*, %struct.dnsc_env** %3, align 8
  %144 = getelementptr inbounds %struct.dnsc_env, %struct.dnsc_env* %143, i32 0, i32 2
  %145 = load %struct.TYPE_4__*, %struct.TYPE_4__** %144, align 8
  %146 = load i64, i64* %8, align 8
  %147 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %145, i64 %146
  %148 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %147, i32 0, i32 1
  %149 = load i32, i32* %148, align 4
  %150 = call i32 @memcpy(i32* %142, i32 %149, i32 4)
  %151 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %152 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %151, i32 0, i32 1
  %153 = load i32*, i32** %152, align 8
  %154 = load %struct.dnsc_env*, %struct.dnsc_env** %3, align 8
  %155 = getelementptr inbounds %struct.dnsc_env, %struct.dnsc_env* %154, i32 0, i32 2
  %156 = load %struct.TYPE_4__*, %struct.TYPE_4__** %155, align 8
  %157 = load i64, i64* %8, align 8
  %158 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %156, i64 %157
  %159 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 4
  %161 = call i32 @memcpy(i32* %153, i32 %160, i32 4)
  %162 = getelementptr inbounds [80 x i8], [80 x i8]* %10, i64 0, i64 0
  %163 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %164 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %163, i32 0, i32 2
  %165 = load %struct.TYPE_6__*, %struct.TYPE_6__** %164, align 8
  %166 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 8
  %168 = call i32 @dnsc_key_to_fingerprint(i8* %162, i32 %167)
  %169 = load i32, i32* @VERB_OPS, align 4
  %170 = load %struct.config_strlist*, %struct.config_strlist** %5, align 8
  %171 = getelementptr inbounds %struct.config_strlist, %struct.config_strlist* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 8
  %173 = getelementptr inbounds [80 x i8], [80 x i8]* %10, i64 0, i64 0
  %174 = call i32 (i32, i8*, i32, ...) @verbose(i32 %169, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i64 0, i64 0), i32 %172, i8* %173)
  %175 = load i32, i32* @VERB_OPS, align 4
  %176 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %177 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %176, i32 0, i32 1
  %178 = load i32*, i32** %177, align 8
  %179 = call i32 @key_get_es_version(i32* %178)
  %180 = call i32 (i32, i8*, i32, ...) @verbose(i32 %175, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i32 %179)
  %181 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %182 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %181, i32 0, i32 1
  %183 = load i32*, i32** %182, align 8
  %184 = getelementptr inbounds i32, i32* %183, i64 1
  %185 = load i32, i32* %184, align 4
  %186 = icmp eq i32 %185, 2
  br i1 %186, label %187, label %189

187:                                              ; preds = %130
  %188 = call i32 (i8*, ...) @fatal_exit(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.5, i64 0, i64 0))
  br label %189

189:                                              ; preds = %187, %130
  br label %190

190:                                              ; preds = %189, %116
  br label %191

191:                                              ; preds = %190
  %192 = load i64, i64* %8, align 8
  %193 = add i64 %192, 1
  store i64 %193, i64* %8, align 8
  br label %109

194:                                              ; preds = %109
  %195 = load i32, i32* %11, align 4
  %196 = icmp ne i32 %195, 0
  br i1 %196, label %202, label %197

197:                                              ; preds = %194
  %198 = load %struct.config_strlist*, %struct.config_strlist** %5, align 8
  %199 = getelementptr inbounds %struct.config_strlist, %struct.config_strlist* %198, i32 0, i32 0
  %200 = load i32, i32* %199, align 8
  %201 = call i32 (i8*, ...) @fatal_exit(i8* getelementptr inbounds ([89 x i8], [89 x i8]* @.str.6, i64 0, i64 0), i32 %200)
  br label %202

202:                                              ; preds = %197, %194
  br label %203

203:                                              ; preds = %202
  %204 = load %struct.config_strlist*, %struct.config_strlist** %5, align 8
  %205 = getelementptr inbounds %struct.config_strlist, %struct.config_strlist* %204, i32 0, i32 1
  %206 = load %struct.config_strlist*, %struct.config_strlist** %205, align 8
  store %struct.config_strlist* %206, %struct.config_strlist** %5, align 8
  %207 = load i64, i64* %7, align 8
  %208 = add i64 %207, 1
  store i64 %208, i64* %7, align 8
  br label %49

209:                                              ; preds = %49
  %210 = load i64, i64* %6, align 8
  %211 = trunc i64 %210 to i32
  ret i32 %211
}

declare dso_local i8* @sodium_allocarray(i32, i32) #1

declare dso_local i8* @dnsc_chroot_path(%struct.config_file*, i32) #1

declare dso_local i64 @dnsc_read_from_file(i8*, i8*, i32) #1

declare dso_local i32 @fatal_exit(i8*, ...) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local i32 @verbose(i32, i8*, i32, ...) #1

declare dso_local i64 @crypto_scalarmult_base(i32, i64) #1

declare dso_local i32 @dnsc_key_to_fingerprint(i8*, i32) #1

declare dso_local i64 @memcmp(i32, i32, i32) #1

declare dso_local i32 @memcpy(i32*, i32, i32) #1

declare dso_local i32 @key_get_es_version(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
