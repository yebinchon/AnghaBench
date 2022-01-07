; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/libunbound/extr_libunbound.c_ub_ctx_set_stub.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/libunbound/extr_libunbound.c_ub_ctx_set_stub.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ub_ctx = type { i32, %struct.TYPE_4__*, i64 }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.config_stub* }
%struct.config_stub = type { i32, i32, %struct.config_stub*, i8* }
%struct.sockaddr_storage = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@UB_SYNTAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c".\00", align 1
@UB_AFTERFINAL = common dso_local global i32 0, align 4
@UB_NOERROR = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@UB_NOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ub_ctx_set_stub(%struct.ub_ctx* %0, i8* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ub_ctx*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca %struct.config_stub**, align 8
  %12 = alloca %struct.config_stub*, align 8
  %13 = alloca %struct.config_stub*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca %struct.sockaddr_storage, align 4
  %17 = alloca i32, align 4
  store %struct.ub_ctx* %0, %struct.ub_ctx** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %18 = load i8*, i8** %7, align 8
  %19 = icmp ne i8* %18, null
  br i1 %19, label %20, label %30

20:                                               ; preds = %4
  %21 = load i8*, i8** %7, align 8
  %22 = call i32 @parse_dname(i8* %21, %struct.config_stub** %13, i64* %15, i32* %14)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %20
  %25 = load i32, i32* @EINVAL, align 4
  store i32 %25, i32* @errno, align 4
  %26 = load i32, i32* @UB_SYNTAX, align 4
  store i32 %26, i32* %5, align 4
  br label %171

27:                                               ; preds = %20
  %28 = load %struct.config_stub*, %struct.config_stub** %13, align 8
  %29 = call i32 @free(%struct.config_stub* %28)
  br label %31

30:                                               ; preds = %4
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i8** %7, align 8
  br label %31

31:                                               ; preds = %30, %27
  %32 = load i8*, i8** %8, align 8
  %33 = icmp ne i8* %32, null
  br i1 %33, label %34, label %42

34:                                               ; preds = %31
  %35 = load i8*, i8** %8, align 8
  %36 = call i32 @extstrtoaddr(i8* %35, %struct.sockaddr_storage* %16, i32* %17)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %41, label %38

38:                                               ; preds = %34
  %39 = load i32, i32* @EINVAL, align 4
  store i32 %39, i32* @errno, align 4
  %40 = load i32, i32* @UB_SYNTAX, align 4
  store i32 %40, i32* %5, align 4
  br label %171

41:                                               ; preds = %34
  br label %42

42:                                               ; preds = %41, %31
  %43 = load %struct.ub_ctx*, %struct.ub_ctx** %6, align 8
  %44 = getelementptr inbounds %struct.ub_ctx, %struct.ub_ctx* %43, i32 0, i32 0
  %45 = call i32 @lock_basic_lock(i32* %44)
  %46 = load %struct.ub_ctx*, %struct.ub_ctx** %6, align 8
  %47 = getelementptr inbounds %struct.ub_ctx, %struct.ub_ctx* %46, i32 0, i32 2
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %56

50:                                               ; preds = %42
  %51 = load %struct.ub_ctx*, %struct.ub_ctx** %6, align 8
  %52 = getelementptr inbounds %struct.ub_ctx, %struct.ub_ctx* %51, i32 0, i32 0
  %53 = call i32 @lock_basic_unlock(i32* %52)
  %54 = load i32, i32* @EINVAL, align 4
  store i32 %54, i32* @errno, align 4
  %55 = load i32, i32* @UB_AFTERFINAL, align 4
  store i32 %55, i32* %5, align 4
  br label %171

56:                                               ; preds = %42
  %57 = load %struct.ub_ctx*, %struct.ub_ctx** %6, align 8
  %58 = getelementptr inbounds %struct.ub_ctx, %struct.ub_ctx* %57, i32 0, i32 1
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 0
  %61 = load %struct.TYPE_3__*, %struct.TYPE_3__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 0
  store %struct.config_stub** %62, %struct.config_stub*** %11, align 8
  %63 = load i8*, i8** %7, align 8
  %64 = call %struct.config_stub* @cfg_stub_find(%struct.config_stub*** %11, i8* %63)
  store %struct.config_stub* %64, %struct.config_stub** %12, align 8
  %65 = load %struct.config_stub*, %struct.config_stub** %12, align 8
  %66 = icmp ne %struct.config_stub* %65, null
  br i1 %66, label %75, label %67

67:                                               ; preds = %56
  %68 = load i8*, i8** %8, align 8
  %69 = icmp ne i8* %68, null
  br i1 %69, label %75, label %70

70:                                               ; preds = %67
  %71 = load %struct.ub_ctx*, %struct.ub_ctx** %6, align 8
  %72 = getelementptr inbounds %struct.ub_ctx, %struct.ub_ctx* %71, i32 0, i32 0
  %73 = call i32 @lock_basic_unlock(i32* %72)
  %74 = load i32, i32* @UB_NOERROR, align 4
  store i32 %74, i32* %5, align 4
  br label %171

75:                                               ; preds = %67, %56
  %76 = load %struct.config_stub*, %struct.config_stub** %12, align 8
  %77 = icmp ne %struct.config_stub* %76, null
  br i1 %77, label %78, label %92

78:                                               ; preds = %75
  %79 = load i8*, i8** %8, align 8
  %80 = icmp ne i8* %79, null
  br i1 %80, label %92, label %81

81:                                               ; preds = %78
  %82 = load %struct.config_stub*, %struct.config_stub** %12, align 8
  %83 = getelementptr inbounds %struct.config_stub, %struct.config_stub* %82, i32 0, i32 2
  %84 = load %struct.config_stub*, %struct.config_stub** %83, align 8
  %85 = load %struct.config_stub**, %struct.config_stub*** %11, align 8
  store %struct.config_stub* %84, %struct.config_stub** %85, align 8
  %86 = load %struct.config_stub*, %struct.config_stub** %12, align 8
  %87 = call i32 @config_delstub(%struct.config_stub* %86)
  %88 = load %struct.ub_ctx*, %struct.ub_ctx** %6, align 8
  %89 = getelementptr inbounds %struct.ub_ctx, %struct.ub_ctx* %88, i32 0, i32 0
  %90 = call i32 @lock_basic_unlock(i32* %89)
  %91 = load i32, i32* @UB_NOERROR, align 4
  store i32 %91, i32* %5, align 4
  br label %171

92:                                               ; preds = %78, %75
  %93 = load %struct.config_stub*, %struct.config_stub** %12, align 8
  %94 = icmp ne %struct.config_stub* %93, null
  br i1 %94, label %138, label %95

95:                                               ; preds = %92
  %96 = call i64 @calloc(i32 1, i32 24)
  %97 = inttoptr i64 %96 to %struct.config_stub*
  store %struct.config_stub* %97, %struct.config_stub** %12, align 8
  %98 = load %struct.config_stub*, %struct.config_stub** %12, align 8
  %99 = icmp ne %struct.config_stub* %98, null
  br i1 %99, label %100, label %105

100:                                              ; preds = %95
  %101 = load i8*, i8** %7, align 8
  %102 = call i8* @strdup(i8* %101)
  %103 = load %struct.config_stub*, %struct.config_stub** %12, align 8
  %104 = getelementptr inbounds %struct.config_stub, %struct.config_stub* %103, i32 0, i32 3
  store i8* %102, i8** %104, align 8
  br label %105

105:                                              ; preds = %100, %95
  %106 = load %struct.config_stub*, %struct.config_stub** %12, align 8
  %107 = icmp ne %struct.config_stub* %106, null
  br i1 %107, label %108, label %113

108:                                              ; preds = %105
  %109 = load %struct.config_stub*, %struct.config_stub** %12, align 8
  %110 = getelementptr inbounds %struct.config_stub, %struct.config_stub* %109, i32 0, i32 3
  %111 = load i8*, i8** %110, align 8
  %112 = icmp ne i8* %111, null
  br i1 %112, label %121, label %113

113:                                              ; preds = %108, %105
  %114 = load %struct.config_stub*, %struct.config_stub** %12, align 8
  %115 = call i32 @free(%struct.config_stub* %114)
  %116 = load %struct.ub_ctx*, %struct.ub_ctx** %6, align 8
  %117 = getelementptr inbounds %struct.ub_ctx, %struct.ub_ctx* %116, i32 0, i32 0
  %118 = call i32 @lock_basic_unlock(i32* %117)
  %119 = load i32, i32* @ENOMEM, align 4
  store i32 %119, i32* @errno, align 4
  %120 = load i32, i32* @UB_NOMEM, align 4
  store i32 %120, i32* %5, align 4
  br label %171

121:                                              ; preds = %108
  %122 = load %struct.ub_ctx*, %struct.ub_ctx** %6, align 8
  %123 = getelementptr inbounds %struct.ub_ctx, %struct.ub_ctx* %122, i32 0, i32 1
  %124 = load %struct.TYPE_4__*, %struct.TYPE_4__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %124, i32 0, i32 0
  %126 = load %struct.TYPE_3__*, %struct.TYPE_3__** %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %126, i32 0, i32 0
  %128 = load %struct.config_stub*, %struct.config_stub** %127, align 8
  %129 = load %struct.config_stub*, %struct.config_stub** %12, align 8
  %130 = getelementptr inbounds %struct.config_stub, %struct.config_stub* %129, i32 0, i32 2
  store %struct.config_stub* %128, %struct.config_stub** %130, align 8
  %131 = load %struct.config_stub*, %struct.config_stub** %12, align 8
  %132 = load %struct.ub_ctx*, %struct.ub_ctx** %6, align 8
  %133 = getelementptr inbounds %struct.ub_ctx, %struct.ub_ctx* %132, i32 0, i32 1
  %134 = load %struct.TYPE_4__*, %struct.TYPE_4__** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %134, i32 0, i32 0
  %136 = load %struct.TYPE_3__*, %struct.TYPE_3__** %135, align 8
  %137 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %136, i32 0, i32 0
  store %struct.config_stub* %131, %struct.config_stub** %137, align 8
  br label %138

138:                                              ; preds = %121, %92
  br label %139

139:                                              ; preds = %138
  br label %140

140:                                              ; preds = %139
  %141 = load i32, i32* %9, align 4
  %142 = load %struct.config_stub*, %struct.config_stub** %12, align 8
  %143 = getelementptr inbounds %struct.config_stub, %struct.config_stub* %142, i32 0, i32 0
  store i32 %141, i32* %143, align 8
  %144 = load i8*, i8** %8, align 8
  %145 = call i8* @strdup(i8* %144)
  store i8* %145, i8** %10, align 8
  %146 = load i8*, i8** %10, align 8
  %147 = icmp ne i8* %146, null
  br i1 %147, label %154, label %148

148:                                              ; preds = %140
  %149 = load %struct.ub_ctx*, %struct.ub_ctx** %6, align 8
  %150 = getelementptr inbounds %struct.ub_ctx, %struct.ub_ctx* %149, i32 0, i32 0
  %151 = call i32 @lock_basic_unlock(i32* %150)
  %152 = load i32, i32* @ENOMEM, align 4
  store i32 %152, i32* @errno, align 4
  %153 = load i32, i32* @UB_NOMEM, align 4
  store i32 %153, i32* %5, align 4
  br label %171

154:                                              ; preds = %140
  %155 = load %struct.config_stub*, %struct.config_stub** %12, align 8
  %156 = getelementptr inbounds %struct.config_stub, %struct.config_stub* %155, i32 0, i32 1
  %157 = load i8*, i8** %10, align 8
  %158 = call i32 @cfg_strlist_insert(i32* %156, i8* %157)
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %166, label %160

160:                                              ; preds = %154
  %161 = load %struct.ub_ctx*, %struct.ub_ctx** %6, align 8
  %162 = getelementptr inbounds %struct.ub_ctx, %struct.ub_ctx* %161, i32 0, i32 0
  %163 = call i32 @lock_basic_unlock(i32* %162)
  %164 = load i32, i32* @ENOMEM, align 4
  store i32 %164, i32* @errno, align 4
  %165 = load i32, i32* @UB_NOMEM, align 4
  store i32 %165, i32* %5, align 4
  br label %171

166:                                              ; preds = %154
  %167 = load %struct.ub_ctx*, %struct.ub_ctx** %6, align 8
  %168 = getelementptr inbounds %struct.ub_ctx, %struct.ub_ctx* %167, i32 0, i32 0
  %169 = call i32 @lock_basic_unlock(i32* %168)
  %170 = load i32, i32* @UB_NOERROR, align 4
  store i32 %170, i32* %5, align 4
  br label %171

171:                                              ; preds = %166, %160, %148, %113, %81, %70, %50, %38, %24
  %172 = load i32, i32* %5, align 4
  ret i32 %172
}

declare dso_local i32 @parse_dname(i8*, %struct.config_stub**, i64*, i32*) #1

declare dso_local i32 @free(%struct.config_stub*) #1

declare dso_local i32 @extstrtoaddr(i8*, %struct.sockaddr_storage*, i32*) #1

declare dso_local i32 @lock_basic_lock(i32*) #1

declare dso_local i32 @lock_basic_unlock(i32*) #1

declare dso_local %struct.config_stub* @cfg_stub_find(%struct.config_stub***, i8*) #1

declare dso_local i32 @config_delstub(%struct.config_stub*) #1

declare dso_local i64 @calloc(i32, i32) #1

declare dso_local i8* @strdup(i8*) #1

declare dso_local i32 @cfg_strlist_insert(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
