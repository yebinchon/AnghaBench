; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/smallapp/extr_unbound-anchor.c_resolve_host_ip.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/smallapp/extr_unbound-anchor.c_resolve_host_ip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ub_ctx = type { i32 }
%struct.ip_list = type { %struct.ip_list* }
%struct.ub_result = type { i32*, i64*, i64, i32 }

@verb = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [26 x i8] c"error: resolve %s %s: %s\0A\00", align 1
@LDNS_RR_TYPE_A = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c"A\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"AAAA\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"out of memory\0A\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"resolve %s %s: no result\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ub_ctx*, i8*, i32, i32, i32, %struct.ip_list**)* @resolve_host_ip to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @resolve_host_ip(%struct.ub_ctx* %0, i8* %1, i32 %2, i32 %3, i32 %4, %struct.ip_list** %5) #0 {
  %7 = alloca %struct.ub_ctx*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.ip_list**, align 8
  %13 = alloca %struct.ub_result*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.ip_list*, align 8
  store %struct.ub_ctx* %0, %struct.ub_ctx** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store %struct.ip_list** %5, %struct.ip_list*** %12, align 8
  store %struct.ub_result* null, %struct.ub_result** %13, align 8
  %17 = load %struct.ub_ctx*, %struct.ub_ctx** %7, align 8
  %18 = load i8*, i8** %8, align 8
  %19 = load i32, i32* %10, align 4
  %20 = load i32, i32* %11, align 4
  %21 = call i32 @ub_resolve(%struct.ub_ctx* %17, i8* %18, i32 %19, i32 %20, %struct.ub_result** %13)
  store i32 %21, i32* %14, align 4
  %22 = load i32, i32* %14, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %38

24:                                               ; preds = %6
  %25 = load i64, i64* @verb, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %37

27:                                               ; preds = %24
  %28 = load i8*, i8** %8, align 8
  %29 = load i32, i32* %10, align 4
  %30 = load i32, i32* @LDNS_RR_TYPE_A, align 4
  %31 = icmp eq i32 %29, %30
  %32 = zext i1 %31 to i64
  %33 = select i1 %31, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)
  %34 = load i32, i32* %14, align 4
  %35 = call i8* @ub_strerror(i32 %34)
  %36 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i8* %28, i8* %33, i8* %35)
  br label %37

37:                                               ; preds = %27, %24
  br label %121

38:                                               ; preds = %6
  %39 = load %struct.ub_result*, %struct.ub_result** %13, align 8
  %40 = icmp ne %struct.ub_result* %39, null
  br i1 %40, label %50, label %41

41:                                               ; preds = %38
  %42 = load i64, i64* @verb, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %41
  %45 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0))
  br label %46

46:                                               ; preds = %44, %41
  %47 = load %struct.ub_ctx*, %struct.ub_ctx** %7, align 8
  %48 = call i32 @ub_ctx_delete(%struct.ub_ctx* %47)
  %49 = call i32 @exit(i32 0) #3
  unreachable

50:                                               ; preds = %38
  %51 = load %struct.ub_result*, %struct.ub_result** %13, align 8
  %52 = getelementptr inbounds %struct.ub_result, %struct.ub_result* %51, i32 0, i32 3
  %53 = load i32, i32* %52, align 8
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %65

55:                                               ; preds = %50
  %56 = load %struct.ub_result*, %struct.ub_result** %13, align 8
  %57 = getelementptr inbounds %struct.ub_result, %struct.ub_result* %56, i32 0, i32 2
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %65, label %60

60:                                               ; preds = %55
  %61 = load %struct.ub_result*, %struct.ub_result** %13, align 8
  %62 = getelementptr inbounds %struct.ub_result, %struct.ub_result* %61, i32 0, i32 1
  %63 = load i64*, i64** %62, align 8
  %64 = icmp ne i64* %63, null
  br i1 %64, label %77, label %65

65:                                               ; preds = %60, %55, %50
  %66 = load i64, i64* @verb, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %76

68:                                               ; preds = %65
  %69 = load i8*, i8** %8, align 8
  %70 = load i32, i32* %10, align 4
  %71 = load i32, i32* @LDNS_RR_TYPE_A, align 4
  %72 = icmp eq i32 %70, %71
  %73 = zext i1 %72 to i64
  %74 = select i1 %72, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)
  %75 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0), i8* %69, i8* %74)
  br label %76

76:                                               ; preds = %68, %65
  br label %121

77:                                               ; preds = %60
  store i32 0, i32* %15, align 4
  br label %78

78:                                               ; preds = %115, %77
  %79 = load %struct.ub_result*, %struct.ub_result** %13, align 8
  %80 = getelementptr inbounds %struct.ub_result, %struct.ub_result* %79, i32 0, i32 1
  %81 = load i64*, i64** %80, align 8
  %82 = load i32, i32* %15, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i64, i64* %81, i64 %83
  %85 = load i64, i64* %84, align 8
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %118

87:                                               ; preds = %78
  %88 = load i32, i32* %10, align 4
  %89 = load %struct.ub_result*, %struct.ub_result** %13, align 8
  %90 = getelementptr inbounds %struct.ub_result, %struct.ub_result* %89, i32 0, i32 1
  %91 = load i64*, i64** %90, align 8
  %92 = load i32, i32* %15, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i64, i64* %91, i64 %93
  %95 = load i64, i64* %94, align 8
  %96 = load %struct.ub_result*, %struct.ub_result** %13, align 8
  %97 = getelementptr inbounds %struct.ub_result, %struct.ub_result* %96, i32 0, i32 0
  %98 = load i32*, i32** %97, align 8
  %99 = load i32, i32* %15, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i32, i32* %98, i64 %100
  %102 = load i32, i32* %101, align 4
  %103 = load i32, i32* %9, align 4
  %104 = call %struct.ip_list* @RR_to_ip(i32 %88, i64 %95, i32 %102, i32 %103)
  store %struct.ip_list* %104, %struct.ip_list** %16, align 8
  %105 = load %struct.ip_list*, %struct.ip_list** %16, align 8
  %106 = icmp ne %struct.ip_list* %105, null
  br i1 %106, label %108, label %107

107:                                              ; preds = %87
  br label %115

108:                                              ; preds = %87
  %109 = load %struct.ip_list**, %struct.ip_list*** %12, align 8
  %110 = load %struct.ip_list*, %struct.ip_list** %109, align 8
  %111 = load %struct.ip_list*, %struct.ip_list** %16, align 8
  %112 = getelementptr inbounds %struct.ip_list, %struct.ip_list* %111, i32 0, i32 0
  store %struct.ip_list* %110, %struct.ip_list** %112, align 8
  %113 = load %struct.ip_list*, %struct.ip_list** %16, align 8
  %114 = load %struct.ip_list**, %struct.ip_list*** %12, align 8
  store %struct.ip_list* %113, %struct.ip_list** %114, align 8
  br label %115

115:                                              ; preds = %108, %107
  %116 = load i32, i32* %15, align 4
  %117 = add nsw i32 %116, 1
  store i32 %117, i32* %15, align 4
  br label %78

118:                                              ; preds = %78
  %119 = load %struct.ub_result*, %struct.ub_result** %13, align 8
  %120 = call i32 @ub_resolve_free(%struct.ub_result* %119)
  br label %121

121:                                              ; preds = %118, %76, %37
  ret void
}

declare dso_local i32 @ub_resolve(%struct.ub_ctx*, i8*, i32, i32, %struct.ub_result**) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i8* @ub_strerror(i32) #1

declare dso_local i32 @ub_ctx_delete(%struct.ub_ctx*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local %struct.ip_list* @RR_to_ip(i32, i64, i32, i32) #1

declare dso_local i32 @ub_resolve_free(%struct.ub_result*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
