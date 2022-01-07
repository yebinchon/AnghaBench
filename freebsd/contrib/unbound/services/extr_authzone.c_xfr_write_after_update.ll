; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/services/extr_authzone.c_xfr_write_after_update.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/services/extr_authzone.c_xfr_write_after_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.auth_xfer = type { %struct.TYPE_5__*, i32, i32, i32, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64 }
%struct.module_env = type { %struct.TYPE_6__*, %struct.config_file* }
%struct.TYPE_6__ = type { i32 }
%struct.config_file = type { i8* }
%struct.auth_zone = type { i64*, i32 }

@VERB_ALGO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"tmpfilename too long, cannot update  zonefile %s\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"%s.tmp%u\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"could not rename(%s, %s): %s\00", align 1
@errno = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.auth_xfer*, %struct.module_env*)* @xfr_write_after_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xfr_write_after_update(%struct.auth_xfer* %0, %struct.module_env* %1) #0 {
  %3 = alloca %struct.auth_xfer*, align 8
  %4 = alloca %struct.module_env*, align 8
  %5 = alloca %struct.config_file*, align 8
  %6 = alloca %struct.auth_zone*, align 8
  %7 = alloca [1024 x i8], align 16
  %8 = alloca i8*, align 8
  store %struct.auth_xfer* %0, %struct.auth_xfer** %3, align 8
  store %struct.module_env* %1, %struct.module_env** %4, align 8
  %9 = load %struct.module_env*, %struct.module_env** %4, align 8
  %10 = getelementptr inbounds %struct.module_env, %struct.module_env* %9, i32 0, i32 1
  %11 = load %struct.config_file*, %struct.config_file** %10, align 8
  store %struct.config_file* %11, %struct.config_file** %5, align 8
  %12 = load %struct.auth_xfer*, %struct.auth_xfer** %3, align 8
  %13 = getelementptr inbounds %struct.auth_xfer, %struct.auth_xfer* %12, i32 0, i32 1
  %14 = call i32 @lock_basic_unlock(i32* %13)
  %15 = load %struct.module_env*, %struct.module_env** %4, align 8
  %16 = getelementptr inbounds %struct.module_env, %struct.module_env* %15, i32 0, i32 0
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %19 = call i32 @lock_rw_rdlock(i32* %18)
  %20 = load %struct.module_env*, %struct.module_env** %4, align 8
  %21 = getelementptr inbounds %struct.module_env, %struct.module_env* %20, i32 0, i32 0
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %21, align 8
  %23 = load %struct.auth_xfer*, %struct.auth_xfer** %3, align 8
  %24 = getelementptr inbounds %struct.auth_xfer, %struct.auth_xfer* %23, i32 0, i32 4
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.auth_xfer*, %struct.auth_xfer** %3, align 8
  %27 = getelementptr inbounds %struct.auth_xfer, %struct.auth_xfer* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.auth_xfer*, %struct.auth_xfer** %3, align 8
  %30 = getelementptr inbounds %struct.auth_xfer, %struct.auth_xfer* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = call %struct.auth_zone* @auth_zone_find(%struct.TYPE_6__* %22, i32 %25, i32 %28, i32 %31)
  store %struct.auth_zone* %32, %struct.auth_zone** %6, align 8
  %33 = load %struct.auth_zone*, %struct.auth_zone** %6, align 8
  %34 = icmp ne %struct.auth_zone* %33, null
  br i1 %34, label %44, label %35

35:                                               ; preds = %2
  %36 = load %struct.module_env*, %struct.module_env** %4, align 8
  %37 = getelementptr inbounds %struct.module_env, %struct.module_env* %36, i32 0, i32 0
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 0
  %40 = call i32 @lock_rw_unlock(i32* %39)
  %41 = load %struct.auth_xfer*, %struct.auth_xfer** %3, align 8
  %42 = getelementptr inbounds %struct.auth_xfer, %struct.auth_xfer* %41, i32 0, i32 1
  %43 = call i32 @lock_basic_lock(i32* %42)
  br label %176

44:                                               ; preds = %2
  %45 = load %struct.auth_zone*, %struct.auth_zone** %6, align 8
  %46 = getelementptr inbounds %struct.auth_zone, %struct.auth_zone* %45, i32 0, i32 1
  %47 = call i32 @lock_rw_rdlock(i32* %46)
  %48 = load %struct.auth_xfer*, %struct.auth_xfer** %3, align 8
  %49 = getelementptr inbounds %struct.auth_xfer, %struct.auth_xfer* %48, i32 0, i32 1
  %50 = call i32 @lock_basic_lock(i32* %49)
  %51 = load %struct.module_env*, %struct.module_env** %4, align 8
  %52 = getelementptr inbounds %struct.module_env, %struct.module_env* %51, i32 0, i32 0
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 0
  %55 = call i32 @lock_rw_unlock(i32* %54)
  %56 = load %struct.auth_zone*, %struct.auth_zone** %6, align 8
  %57 = getelementptr inbounds %struct.auth_zone, %struct.auth_zone* %56, i32 0, i32 0
  %58 = load i64*, i64** %57, align 8
  %59 = icmp eq i64* %58, null
  br i1 %59, label %67, label %60

60:                                               ; preds = %44
  %61 = load %struct.auth_zone*, %struct.auth_zone** %6, align 8
  %62 = getelementptr inbounds %struct.auth_zone, %struct.auth_zone* %61, i32 0, i32 0
  %63 = load i64*, i64** %62, align 8
  %64 = getelementptr inbounds i64, i64* %63, i64 0
  %65 = load i64, i64* %64, align 8
  %66 = icmp eq i64 %65, 0
  br i1 %66, label %67, label %71

67:                                               ; preds = %60, %44
  %68 = load %struct.auth_zone*, %struct.auth_zone** %6, align 8
  %69 = getelementptr inbounds %struct.auth_zone, %struct.auth_zone* %68, i32 0, i32 1
  %70 = call i32 @lock_rw_unlock(i32* %69)
  br label %176

71:                                               ; preds = %60
  %72 = load %struct.auth_zone*, %struct.auth_zone** %6, align 8
  %73 = getelementptr inbounds %struct.auth_zone, %struct.auth_zone* %72, i32 0, i32 0
  %74 = load i64*, i64** %73, align 8
  %75 = bitcast i64* %74 to i8*
  store i8* %75, i8** %8, align 8
  %76 = load %struct.config_file*, %struct.config_file** %5, align 8
  %77 = getelementptr inbounds %struct.config_file, %struct.config_file* %76, i32 0, i32 0
  %78 = load i8*, i8** %77, align 8
  %79 = icmp ne i8* %78, null
  br i1 %79, label %80, label %106

80:                                               ; preds = %71
  %81 = load %struct.config_file*, %struct.config_file** %5, align 8
  %82 = getelementptr inbounds %struct.config_file, %struct.config_file* %81, i32 0, i32 0
  %83 = load i8*, i8** %82, align 8
  %84 = getelementptr inbounds i8, i8* %83, i64 0
  %85 = load i8, i8* %84, align 1
  %86 = sext i8 %85 to i32
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %106

88:                                               ; preds = %80
  %89 = load i8*, i8** %8, align 8
  %90 = load %struct.config_file*, %struct.config_file** %5, align 8
  %91 = getelementptr inbounds %struct.config_file, %struct.config_file* %90, i32 0, i32 0
  %92 = load i8*, i8** %91, align 8
  %93 = load %struct.config_file*, %struct.config_file** %5, align 8
  %94 = getelementptr inbounds %struct.config_file, %struct.config_file* %93, i32 0, i32 0
  %95 = load i8*, i8** %94, align 8
  %96 = call i64 @strlen(i8* %95)
  %97 = call i64 @strncmp(i8* %89, i8* %92, i64 %96)
  %98 = icmp eq i64 %97, 0
  br i1 %98, label %99, label %106

99:                                               ; preds = %88
  %100 = load %struct.config_file*, %struct.config_file** %5, align 8
  %101 = getelementptr inbounds %struct.config_file, %struct.config_file* %100, i32 0, i32 0
  %102 = load i8*, i8** %101, align 8
  %103 = call i64 @strlen(i8* %102)
  %104 = load i8*, i8** %8, align 8
  %105 = getelementptr inbounds i8, i8* %104, i64 %103
  store i8* %105, i8** %8, align 8
  br label %106

106:                                              ; preds = %99, %88, %80, %71
  %107 = load i8*, i8** %8, align 8
  %108 = call i64 @strlen(i8* %107)
  %109 = add i64 %108, 16
  %110 = icmp ugt i64 %109, 1024
  br i1 %110, label %111, label %118

111:                                              ; preds = %106
  %112 = load i32, i32* @VERB_ALGO, align 4
  %113 = load i8*, i8** %8, align 8
  %114 = call i32 @verbose(i32 %112, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i8* %113)
  %115 = load %struct.auth_zone*, %struct.auth_zone** %6, align 8
  %116 = getelementptr inbounds %struct.auth_zone, %struct.auth_zone* %115, i32 0, i32 1
  %117 = call i32 @lock_rw_unlock(i32* %116)
  br label %176

118:                                              ; preds = %106
  %119 = getelementptr inbounds [1024 x i8], [1024 x i8]* %7, i64 0, i64 0
  %120 = load i8*, i8** %8, align 8
  %121 = call i64 (...) @getpid()
  %122 = trunc i64 %121 to i32
  %123 = call i32 @snprintf(i8* %119, i32 1024, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8* %120, i32 %122)
  %124 = load %struct.auth_xfer*, %struct.auth_xfer** %3, align 8
  %125 = getelementptr inbounds %struct.auth_xfer, %struct.auth_xfer* %124, i32 0, i32 0
  %126 = load %struct.TYPE_5__*, %struct.TYPE_5__** %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %126, i32 0, i32 0
  %128 = load %struct.TYPE_4__*, %struct.TYPE_4__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %128, i32 0, i32 0
  %130 = load i64, i64* %129, align 8
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %144

132:                                              ; preds = %118
  %133 = load %struct.auth_xfer*, %struct.auth_xfer** %3, align 8
  %134 = getelementptr inbounds [1024 x i8], [1024 x i8]* %7, i64 0, i64 0
  %135 = call i32 @auth_zone_write_chunks(%struct.auth_xfer* %133, i8* %134)
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %143, label %137

137:                                              ; preds = %132
  %138 = getelementptr inbounds [1024 x i8], [1024 x i8]* %7, i64 0, i64 0
  %139 = call i32 @unlink(i8* %138)
  %140 = load %struct.auth_zone*, %struct.auth_zone** %6, align 8
  %141 = getelementptr inbounds %struct.auth_zone, %struct.auth_zone* %140, i32 0, i32 1
  %142 = call i32 @lock_rw_unlock(i32* %141)
  br label %143

143:                                              ; preds = %137, %132
  br label %156

144:                                              ; preds = %118
  %145 = load %struct.auth_zone*, %struct.auth_zone** %6, align 8
  %146 = getelementptr inbounds [1024 x i8], [1024 x i8]* %7, i64 0, i64 0
  %147 = call i32 @auth_zone_write_file(%struct.auth_zone* %145, i8* %146)
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %155, label %149

149:                                              ; preds = %144
  %150 = getelementptr inbounds [1024 x i8], [1024 x i8]* %7, i64 0, i64 0
  %151 = call i32 @unlink(i8* %150)
  %152 = load %struct.auth_zone*, %struct.auth_zone** %6, align 8
  %153 = getelementptr inbounds %struct.auth_zone, %struct.auth_zone* %152, i32 0, i32 1
  %154 = call i32 @lock_rw_unlock(i32* %153)
  br label %176

155:                                              ; preds = %144
  br label %156

156:                                              ; preds = %155, %143
  %157 = getelementptr inbounds [1024 x i8], [1024 x i8]* %7, i64 0, i64 0
  %158 = load i8*, i8** %8, align 8
  %159 = call i64 @rename(i8* %157, i8* %158)
  %160 = icmp slt i64 %159, 0
  br i1 %160, label %161, label %172

161:                                              ; preds = %156
  %162 = getelementptr inbounds [1024 x i8], [1024 x i8]* %7, i64 0, i64 0
  %163 = load i8*, i8** %8, align 8
  %164 = load i32, i32* @errno, align 4
  %165 = call i32 @strerror(i32 %164)
  %166 = call i32 @log_err(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i8* %162, i8* %163, i32 %165)
  %167 = getelementptr inbounds [1024 x i8], [1024 x i8]* %7, i64 0, i64 0
  %168 = call i32 @unlink(i8* %167)
  %169 = load %struct.auth_zone*, %struct.auth_zone** %6, align 8
  %170 = getelementptr inbounds %struct.auth_zone, %struct.auth_zone* %169, i32 0, i32 1
  %171 = call i32 @lock_rw_unlock(i32* %170)
  br label %176

172:                                              ; preds = %156
  %173 = load %struct.auth_zone*, %struct.auth_zone** %6, align 8
  %174 = getelementptr inbounds %struct.auth_zone, %struct.auth_zone* %173, i32 0, i32 1
  %175 = call i32 @lock_rw_unlock(i32* %174)
  br label %176

176:                                              ; preds = %172, %161, %149, %111, %67, %35
  ret void
}

declare dso_local i32 @lock_basic_unlock(i32*) #1

declare dso_local i32 @lock_rw_rdlock(i32*) #1

declare dso_local %struct.auth_zone* @auth_zone_find(%struct.TYPE_6__*, i32, i32, i32) #1

declare dso_local i32 @lock_rw_unlock(i32*) #1

declare dso_local i32 @lock_basic_lock(i32*) #1

declare dso_local i64 @strncmp(i8*, i8*, i64) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @verbose(i32, i8*, i8*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, i32) #1

declare dso_local i64 @getpid(...) #1

declare dso_local i32 @auth_zone_write_chunks(%struct.auth_xfer*, i8*) #1

declare dso_local i32 @unlink(i8*) #1

declare dso_local i32 @auth_zone_write_file(%struct.auth_zone*, i8*) #1

declare dso_local i64 @rename(i8*, i8*) #1

declare dso_local i32 @log_err(i8*, i8*, i8*, i32) #1

declare dso_local i32 @strerror(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
