; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/iterator/extr_iterator.c_processCollectClass.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/iterator/extr_iterator.c_processCollectClass.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.module_qstate = type { i32, %struct.TYPE_6__, %struct.TYPE_5__*, i64* }
%struct.TYPE_6__ = type { i32, i32, i32 }
%struct.TYPE_5__ = type { i32, i32 }
%struct.iter_qstate = type { i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }

@LDNS_RR_CLASS_ANY = common dso_local global i64 0, align 8
@VERB_ALGO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"spawn collect query\00", align 1
@INIT_REQUEST_STATE = common dso_local global i32 0, align 4
@FINISHED_STATE = common dso_local global i32 0, align 4
@BIT_CD = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"could not generate class ANY lookup query\00", align 1
@LDNS_RCODE_SERVFAIL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [47 x i8] c"No root hints or fwds, giving up on qclass ANY\00", align 1
@LDNS_RCODE_REFUSED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.module_qstate*, i32)* @processCollectClass to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @processCollectClass(%struct.module_qstate* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.module_qstate*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.iter_qstate*, align 8
  %7 = alloca %struct.module_qstate*, align 8
  %8 = alloca i32, align 4
  store %struct.module_qstate* %0, %struct.module_qstate** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.module_qstate*, %struct.module_qstate** %4, align 8
  %10 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %9, i32 0, i32 3
  %11 = load i64*, i64** %10, align 8
  %12 = load i32, i32* %5, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds i64, i64* %11, i64 %13
  %15 = load i64, i64* %14, align 8
  %16 = inttoptr i64 %15 to %struct.iter_qstate*
  store %struct.iter_qstate* %16, %struct.iter_qstate** %6, align 8
  %17 = load %struct.iter_qstate*, %struct.iter_qstate** %6, align 8
  %18 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %22, label %112

22:                                               ; preds = %2
  store i32 0, i32* %8, align 4
  %23 = load i64, i64* @LDNS_RR_CLASS_ANY, align 8
  %24 = load %struct.iter_qstate*, %struct.iter_qstate** %6, align 8
  %25 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  store i64 %23, i64* %26, align 8
  br label %27

27:                                               ; preds = %98, %22
  %28 = load %struct.module_qstate*, %struct.module_qstate** %4, align 8
  %29 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %28, i32 0, i32 2
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.module_qstate*, %struct.module_qstate** %4, align 8
  %34 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %33, i32 0, i32 2
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i64 @iter_get_next_root(i32 %32, i32 %37, i32* %8)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %99

40:                                               ; preds = %27
  %41 = load i32, i32* @VERB_ALGO, align 4
  %42 = load %struct.module_qstate*, %struct.module_qstate** %4, align 8
  %43 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.module_qstate*, %struct.module_qstate** %4, align 8
  %47 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* %8, align 4
  %51 = call i32 @log_nametypeclass(i32 %41, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %45, i32 %49, i32 %50)
  %52 = load %struct.module_qstate*, %struct.module_qstate** %4, align 8
  %53 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.module_qstate*, %struct.module_qstate** %4, align 8
  %57 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.module_qstate*, %struct.module_qstate** %4, align 8
  %61 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* %8, align 4
  %65 = load %struct.module_qstate*, %struct.module_qstate** %4, align 8
  %66 = load i32, i32* %5, align 4
  %67 = load %struct.iter_qstate*, %struct.iter_qstate** %6, align 8
  %68 = load i32, i32* @INIT_REQUEST_STATE, align 4
  %69 = load i32, i32* @FINISHED_STATE, align 4
  %70 = load %struct.module_qstate*, %struct.module_qstate** %4, align 8
  %71 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = load i32, i32* @BIT_CD, align 4
  %74 = and i32 %72, %73
  %75 = icmp ne i32 %74, 0
  %76 = xor i1 %75, true
  %77 = zext i1 %76 to i32
  %78 = call i32 @generate_sub_request(i32 %55, i32 %59, i32 %63, i32 %64, %struct.module_qstate* %65, i32 %66, %struct.iter_qstate* %67, i32 %68, i32 %69, %struct.module_qstate** %7, i32 %77)
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %87, label %80

80:                                               ; preds = %40
  %81 = load %struct.module_qstate*, %struct.module_qstate** %4, align 8
  %82 = call i32 @errinf(%struct.module_qstate* %81, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0))
  %83 = load %struct.module_qstate*, %struct.module_qstate** %4, align 8
  %84 = load i32, i32* %5, align 4
  %85 = load i32, i32* @LDNS_RCODE_SERVFAIL, align 4
  %86 = call i32 @error_response(%struct.module_qstate* %83, i32 %84, i32 %85)
  store i32 %86, i32* %3, align 4
  br label %113

87:                                               ; preds = %40
  %88 = load %struct.iter_qstate*, %struct.iter_qstate** %6, align 8
  %89 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = add nsw i64 %90, 1
  store i64 %91, i64* %89, align 8
  %92 = load i32, i32* %8, align 4
  %93 = icmp eq i32 %92, 65535
  br i1 %93, label %94, label %95

94:                                               ; preds = %87
  br label %99

95:                                               ; preds = %87
  %96 = load i32, i32* %8, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %8, align 4
  br label %98

98:                                               ; preds = %95
  br label %27

99:                                               ; preds = %94, %27
  %100 = load %struct.iter_qstate*, %struct.iter_qstate** %6, align 8
  %101 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = icmp eq i64 %102, 0
  br i1 %103, label %104, label %111

104:                                              ; preds = %99
  %105 = load i32, i32* @VERB_ALGO, align 4
  %106 = call i32 @verbose(i32 %105, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0))
  %107 = load %struct.module_qstate*, %struct.module_qstate** %4, align 8
  %108 = load i32, i32* %5, align 4
  %109 = load i32, i32* @LDNS_RCODE_REFUSED, align 4
  %110 = call i32 @error_response(%struct.module_qstate* %107, i32 %108, i32 %109)
  store i32 %110, i32* %3, align 4
  br label %113

111:                                              ; preds = %99
  br label %112

112:                                              ; preds = %111, %2
  store i32 0, i32* %3, align 4
  br label %113

113:                                              ; preds = %112, %104, %80
  %114 = load i32, i32* %3, align 4
  ret i32 %114
}

declare dso_local i64 @iter_get_next_root(i32, i32, i32*) #1

declare dso_local i32 @log_nametypeclass(i32, i8*, i32, i32, i32) #1

declare dso_local i32 @generate_sub_request(i32, i32, i32, i32, %struct.module_qstate*, i32, %struct.iter_qstate*, i32, i32, %struct.module_qstate**, i32) #1

declare dso_local i32 @errinf(%struct.module_qstate*, i8*) #1

declare dso_local i32 @error_response(%struct.module_qstate*, i32, i32) #1

declare dso_local i32 @verbose(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
