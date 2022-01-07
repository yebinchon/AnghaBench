; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/libunbound/extr_libunbound.c_ub_ctx_set_fwd.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/libunbound/extr_libunbound.c_ub_ctx_set_fwd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ub_ctx = type { i32, %struct.TYPE_4__*, i64 }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.config_stub* }
%struct.config_stub = type { i32, %struct.config_stub*, i8* }
%struct.sockaddr_storage = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@UB_AFTERFINAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c".\00", align 1
@UB_NOERROR = common dso_local global i32 0, align 4
@UB_SYNTAX = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@UB_NOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ub_ctx_set_fwd(%struct.ub_ctx* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ub_ctx*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.sockaddr_storage, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.config_stub*, align 8
  %9 = alloca i8*, align 8
  store %struct.ub_ctx* %0, %struct.ub_ctx** %4, align 8
  store i8* %1, i8** %5, align 8
  %10 = load %struct.ub_ctx*, %struct.ub_ctx** %4, align 8
  %11 = getelementptr inbounds %struct.ub_ctx, %struct.ub_ctx* %10, i32 0, i32 0
  %12 = call i32 @lock_basic_lock(i32* %11)
  %13 = load %struct.ub_ctx*, %struct.ub_ctx** %4, align 8
  %14 = getelementptr inbounds %struct.ub_ctx, %struct.ub_ctx* %13, i32 0, i32 2
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %23

17:                                               ; preds = %2
  %18 = load %struct.ub_ctx*, %struct.ub_ctx** %4, align 8
  %19 = getelementptr inbounds %struct.ub_ctx, %struct.ub_ctx* %18, i32 0, i32 0
  %20 = call i32 @lock_basic_unlock(i32* %19)
  %21 = load i32, i32* @EINVAL, align 4
  store i32 %21, i32* @errno, align 4
  %22 = load i32, i32* @UB_AFTERFINAL, align 4
  store i32 %22, i32* %3, align 4
  br label %194

23:                                               ; preds = %2
  %24 = load i8*, i8** %5, align 8
  %25 = icmp ne i8* %24, null
  br i1 %25, label %73, label %26

26:                                               ; preds = %23
  %27 = load %struct.ub_ctx*, %struct.ub_ctx** %4, align 8
  %28 = getelementptr inbounds %struct.ub_ctx, %struct.ub_ctx* %27, i32 0, i32 1
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load %struct.config_stub*, %struct.config_stub** %32, align 8
  %34 = icmp ne %struct.config_stub* %33, null
  br i1 %34, label %35, label %68

35:                                               ; preds = %26
  %36 = load %struct.ub_ctx*, %struct.ub_ctx** %4, align 8
  %37 = getelementptr inbounds %struct.ub_ctx, %struct.ub_ctx* %36, i32 0, i32 1
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  %42 = load %struct.config_stub*, %struct.config_stub** %41, align 8
  %43 = getelementptr inbounds %struct.config_stub, %struct.config_stub* %42, i32 0, i32 2
  %44 = load i8*, i8** %43, align 8
  %45 = call i64 @strcmp(i8* %44, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %46 = icmp eq i64 %45, 0
  br i1 %46, label %47, label %68

47:                                               ; preds = %35
  %48 = load %struct.ub_ctx*, %struct.ub_ctx** %4, align 8
  %49 = getelementptr inbounds %struct.ub_ctx, %struct.ub_ctx* %48, i32 0, i32 1
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = load %struct.TYPE_3__*, %struct.TYPE_3__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 0
  %54 = load %struct.config_stub*, %struct.config_stub** %53, align 8
  store %struct.config_stub* %54, %struct.config_stub** %8, align 8
  %55 = load %struct.config_stub*, %struct.config_stub** %8, align 8
  %56 = getelementptr inbounds %struct.config_stub, %struct.config_stub* %55, i32 0, i32 1
  %57 = load %struct.config_stub*, %struct.config_stub** %56, align 8
  %58 = load %struct.ub_ctx*, %struct.ub_ctx** %4, align 8
  %59 = getelementptr inbounds %struct.ub_ctx, %struct.ub_ctx* %58, i32 0, i32 1
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 0
  %62 = load %struct.TYPE_3__*, %struct.TYPE_3__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 0
  store %struct.config_stub* %57, %struct.config_stub** %63, align 8
  %64 = load %struct.config_stub*, %struct.config_stub** %8, align 8
  %65 = getelementptr inbounds %struct.config_stub, %struct.config_stub* %64, i32 0, i32 1
  store %struct.config_stub* null, %struct.config_stub** %65, align 8
  %66 = load %struct.config_stub*, %struct.config_stub** %8, align 8
  %67 = call i32 @config_delstubs(%struct.config_stub* %66)
  br label %68

68:                                               ; preds = %47, %35, %26
  %69 = load %struct.ub_ctx*, %struct.ub_ctx** %4, align 8
  %70 = getelementptr inbounds %struct.ub_ctx, %struct.ub_ctx* %69, i32 0, i32 0
  %71 = call i32 @lock_basic_unlock(i32* %70)
  %72 = load i32, i32* @UB_NOERROR, align 4
  store i32 %72, i32* %3, align 4
  br label %194

73:                                               ; preds = %23
  %74 = load %struct.ub_ctx*, %struct.ub_ctx** %4, align 8
  %75 = getelementptr inbounds %struct.ub_ctx, %struct.ub_ctx* %74, i32 0, i32 0
  %76 = call i32 @lock_basic_unlock(i32* %75)
  %77 = load i8*, i8** %5, align 8
  %78 = call i32 @extstrtoaddr(i8* %77, %struct.sockaddr_storage* %6, i32* %7)
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %83, label %80

80:                                               ; preds = %73
  %81 = load i32, i32* @EINVAL, align 4
  store i32 %81, i32* @errno, align 4
  %82 = load i32, i32* @UB_SYNTAX, align 4
  store i32 %82, i32* %3, align 4
  br label %194

83:                                               ; preds = %73
  %84 = load %struct.ub_ctx*, %struct.ub_ctx** %4, align 8
  %85 = getelementptr inbounds %struct.ub_ctx, %struct.ub_ctx* %84, i32 0, i32 0
  %86 = call i32 @lock_basic_lock(i32* %85)
  %87 = load %struct.ub_ctx*, %struct.ub_ctx** %4, align 8
  %88 = getelementptr inbounds %struct.ub_ctx, %struct.ub_ctx* %87, i32 0, i32 1
  %89 = load %struct.TYPE_4__*, %struct.TYPE_4__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 0
  %91 = load %struct.TYPE_3__*, %struct.TYPE_3__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %91, i32 0, i32 0
  %93 = load %struct.config_stub*, %struct.config_stub** %92, align 8
  %94 = icmp ne %struct.config_stub* %93, null
  br i1 %94, label %95, label %107

95:                                               ; preds = %83
  %96 = load %struct.ub_ctx*, %struct.ub_ctx** %4, align 8
  %97 = getelementptr inbounds %struct.ub_ctx, %struct.ub_ctx* %96, i32 0, i32 1
  %98 = load %struct.TYPE_4__*, %struct.TYPE_4__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i32 0, i32 0
  %100 = load %struct.TYPE_3__*, %struct.TYPE_3__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %100, i32 0, i32 0
  %102 = load %struct.config_stub*, %struct.config_stub** %101, align 8
  %103 = getelementptr inbounds %struct.config_stub, %struct.config_stub* %102, i32 0, i32 2
  %104 = load i8*, i8** %103, align 8
  %105 = call i64 @strcmp(i8* %104, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %150

107:                                              ; preds = %95, %83
  %108 = call %struct.config_stub* @calloc(i32 1, i32 24)
  store %struct.config_stub* %108, %struct.config_stub** %8, align 8
  %109 = load %struct.config_stub*, %struct.config_stub** %8, align 8
  %110 = icmp ne %struct.config_stub* %109, null
  br i1 %110, label %117, label %111

111:                                              ; preds = %107
  %112 = load %struct.ub_ctx*, %struct.ub_ctx** %4, align 8
  %113 = getelementptr inbounds %struct.ub_ctx, %struct.ub_ctx* %112, i32 0, i32 0
  %114 = call i32 @lock_basic_unlock(i32* %113)
  %115 = load i32, i32* @ENOMEM, align 4
  store i32 %115, i32* @errno, align 4
  %116 = load i32, i32* @UB_NOMEM, align 4
  store i32 %116, i32* %3, align 4
  br label %194

117:                                              ; preds = %107
  %118 = call i8* @strdup(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %119 = load %struct.config_stub*, %struct.config_stub** %8, align 8
  %120 = getelementptr inbounds %struct.config_stub, %struct.config_stub* %119, i32 0, i32 2
  store i8* %118, i8** %120, align 8
  %121 = load %struct.config_stub*, %struct.config_stub** %8, align 8
  %122 = getelementptr inbounds %struct.config_stub, %struct.config_stub* %121, i32 0, i32 2
  %123 = load i8*, i8** %122, align 8
  %124 = icmp ne i8* %123, null
  br i1 %124, label %133, label %125

125:                                              ; preds = %117
  %126 = load %struct.config_stub*, %struct.config_stub** %8, align 8
  %127 = call i32 @free(%struct.config_stub* %126)
  %128 = load %struct.ub_ctx*, %struct.ub_ctx** %4, align 8
  %129 = getelementptr inbounds %struct.ub_ctx, %struct.ub_ctx* %128, i32 0, i32 0
  %130 = call i32 @lock_basic_unlock(i32* %129)
  %131 = load i32, i32* @ENOMEM, align 4
  store i32 %131, i32* @errno, align 4
  %132 = load i32, i32* @UB_NOMEM, align 4
  store i32 %132, i32* %3, align 4
  br label %194

133:                                              ; preds = %117
  %134 = load %struct.ub_ctx*, %struct.ub_ctx** %4, align 8
  %135 = getelementptr inbounds %struct.ub_ctx, %struct.ub_ctx* %134, i32 0, i32 1
  %136 = load %struct.TYPE_4__*, %struct.TYPE_4__** %135, align 8
  %137 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %136, i32 0, i32 0
  %138 = load %struct.TYPE_3__*, %struct.TYPE_3__** %137, align 8
  %139 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %138, i32 0, i32 0
  %140 = load %struct.config_stub*, %struct.config_stub** %139, align 8
  %141 = load %struct.config_stub*, %struct.config_stub** %8, align 8
  %142 = getelementptr inbounds %struct.config_stub, %struct.config_stub* %141, i32 0, i32 1
  store %struct.config_stub* %140, %struct.config_stub** %142, align 8
  %143 = load %struct.config_stub*, %struct.config_stub** %8, align 8
  %144 = load %struct.ub_ctx*, %struct.ub_ctx** %4, align 8
  %145 = getelementptr inbounds %struct.ub_ctx, %struct.ub_ctx* %144, i32 0, i32 1
  %146 = load %struct.TYPE_4__*, %struct.TYPE_4__** %145, align 8
  %147 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %146, i32 0, i32 0
  %148 = load %struct.TYPE_3__*, %struct.TYPE_3__** %147, align 8
  %149 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %148, i32 0, i32 0
  store %struct.config_stub* %143, %struct.config_stub** %149, align 8
  br label %166

150:                                              ; preds = %95
  %151 = load %struct.ub_ctx*, %struct.ub_ctx** %4, align 8
  %152 = getelementptr inbounds %struct.ub_ctx, %struct.ub_ctx* %151, i32 0, i32 1
  %153 = load %struct.TYPE_4__*, %struct.TYPE_4__** %152, align 8
  %154 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %153, i32 0, i32 0
  %155 = load %struct.TYPE_3__*, %struct.TYPE_3__** %154, align 8
  %156 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %155, i32 0, i32 0
  %157 = load %struct.config_stub*, %struct.config_stub** %156, align 8
  %158 = call i32 @log_assert(%struct.config_stub* %157)
  %159 = load %struct.ub_ctx*, %struct.ub_ctx** %4, align 8
  %160 = getelementptr inbounds %struct.ub_ctx, %struct.ub_ctx* %159, i32 0, i32 1
  %161 = load %struct.TYPE_4__*, %struct.TYPE_4__** %160, align 8
  %162 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %161, i32 0, i32 0
  %163 = load %struct.TYPE_3__*, %struct.TYPE_3__** %162, align 8
  %164 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %163, i32 0, i32 0
  %165 = load %struct.config_stub*, %struct.config_stub** %164, align 8
  store %struct.config_stub* %165, %struct.config_stub** %8, align 8
  br label %166

166:                                              ; preds = %150, %133
  %167 = load i8*, i8** %5, align 8
  %168 = call i8* @strdup(i8* %167)
  store i8* %168, i8** %9, align 8
  %169 = load i8*, i8** %9, align 8
  %170 = icmp ne i8* %169, null
  br i1 %170, label %177, label %171

171:                                              ; preds = %166
  %172 = load %struct.ub_ctx*, %struct.ub_ctx** %4, align 8
  %173 = getelementptr inbounds %struct.ub_ctx, %struct.ub_ctx* %172, i32 0, i32 0
  %174 = call i32 @lock_basic_unlock(i32* %173)
  %175 = load i32, i32* @ENOMEM, align 4
  store i32 %175, i32* @errno, align 4
  %176 = load i32, i32* @UB_NOMEM, align 4
  store i32 %176, i32* %3, align 4
  br label %194

177:                                              ; preds = %166
  %178 = load %struct.config_stub*, %struct.config_stub** %8, align 8
  %179 = getelementptr inbounds %struct.config_stub, %struct.config_stub* %178, i32 0, i32 0
  %180 = load i8*, i8** %9, align 8
  %181 = call i32 @cfg_strlist_insert(i32* %179, i8* %180)
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %189, label %183

183:                                              ; preds = %177
  %184 = load %struct.ub_ctx*, %struct.ub_ctx** %4, align 8
  %185 = getelementptr inbounds %struct.ub_ctx, %struct.ub_ctx* %184, i32 0, i32 0
  %186 = call i32 @lock_basic_unlock(i32* %185)
  %187 = load i32, i32* @ENOMEM, align 4
  store i32 %187, i32* @errno, align 4
  %188 = load i32, i32* @UB_NOMEM, align 4
  store i32 %188, i32* %3, align 4
  br label %194

189:                                              ; preds = %177
  %190 = load %struct.ub_ctx*, %struct.ub_ctx** %4, align 8
  %191 = getelementptr inbounds %struct.ub_ctx, %struct.ub_ctx* %190, i32 0, i32 0
  %192 = call i32 @lock_basic_unlock(i32* %191)
  %193 = load i32, i32* @UB_NOERROR, align 4
  store i32 %193, i32* %3, align 4
  br label %194

194:                                              ; preds = %189, %183, %171, %125, %111, %80, %68, %17
  %195 = load i32, i32* %3, align 4
  ret i32 %195
}

declare dso_local i32 @lock_basic_lock(i32*) #1

declare dso_local i32 @lock_basic_unlock(i32*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @config_delstubs(%struct.config_stub*) #1

declare dso_local i32 @extstrtoaddr(i8*, %struct.sockaddr_storage*, i32*) #1

declare dso_local %struct.config_stub* @calloc(i32, i32) #1

declare dso_local i8* @strdup(i8*) #1

declare dso_local i32 @free(%struct.config_stub*) #1

declare dso_local i32 @log_assert(%struct.config_stub*) #1

declare dso_local i32 @cfg_strlist_insert(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
