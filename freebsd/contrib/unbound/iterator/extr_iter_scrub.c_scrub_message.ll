; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/iterator/extr_iter_scrub.c_scrub_message.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/iterator/extr_iter_scrub.c_scrub_message.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msg_parse = type { i32, i32, i64, i64, i32 }
%struct.query_info = type { i64, i64, i32 }
%struct.regional = type { i32 }
%struct.module_env = type { i32 }
%struct.iter_env = type { i32 }

@VERB_ALGO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"scrub for\00", align 1
@LDNS_RR_TYPE_NS = common dso_local global i32 0, align 4
@BIT_QR = common dso_local global i32 0, align 4
@BIT_AD = common dso_local global i32 0, align 4
@BIT_Z = common dso_local global i32 0, align 4
@LDNS_RCODE_NOERROR = common dso_local global i64 0, align 8
@LDNS_RCODE_NXDOMAIN = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @scrub_message(i32* %0, %struct.msg_parse* %1, %struct.query_info* %2, i32* %3, %struct.regional* %4, %struct.module_env* %5, %struct.iter_env* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca %struct.msg_parse*, align 8
  %11 = alloca %struct.query_info*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca %struct.regional*, align 8
  %14 = alloca %struct.module_env*, align 8
  %15 = alloca %struct.iter_env*, align 8
  store i32* %0, i32** %9, align 8
  store %struct.msg_parse* %1, %struct.msg_parse** %10, align 8
  store %struct.query_info* %2, %struct.query_info** %11, align 8
  store i32* %3, i32** %12, align 8
  store %struct.regional* %4, %struct.regional** %13, align 8
  store %struct.module_env* %5, %struct.module_env** %14, align 8
  store %struct.iter_env* %6, %struct.iter_env** %15, align 8
  %16 = load i32, i32* @VERB_ALGO, align 4
  %17 = load i32*, i32** %12, align 8
  %18 = load i32, i32* @LDNS_RR_TYPE_NS, align 4
  %19 = load %struct.query_info*, %struct.query_info** %11, align 8
  %20 = getelementptr inbounds %struct.query_info, %struct.query_info* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = call i32 @log_nametypeclass(i32 %16, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32* %17, i32 %18, i64 %21)
  %23 = load %struct.msg_parse*, %struct.msg_parse** %10, align 8
  %24 = getelementptr inbounds %struct.msg_parse, %struct.msg_parse* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp sgt i32 %25, 1
  br i1 %26, label %27, label %28

27:                                               ; preds = %7
  store i32 0, i32* %8, align 4
  br label %117

28:                                               ; preds = %7
  %29 = load %struct.msg_parse*, %struct.msg_parse** %10, align 8
  %30 = getelementptr inbounds %struct.msg_parse, %struct.msg_parse* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @BIT_QR, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %36, label %35

35:                                               ; preds = %28
  store i32 0, i32* %8, align 4
  br label %117

36:                                               ; preds = %28
  %37 = load i32, i32* @BIT_AD, align 4
  %38 = load i32, i32* @BIT_Z, align 4
  %39 = or i32 %37, %38
  %40 = xor i32 %39, -1
  %41 = load %struct.msg_parse*, %struct.msg_parse** %10, align 8
  %42 = getelementptr inbounds %struct.msg_parse, %struct.msg_parse* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = and i32 %43, %40
  store i32 %44, i32* %42, align 4
  %45 = load %struct.msg_parse*, %struct.msg_parse** %10, align 8
  %46 = getelementptr inbounds %struct.msg_parse, %struct.msg_parse* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = call i64 @FLAGS_GET_RCODE(i32 %47)
  %49 = load i64, i64* @LDNS_RCODE_NOERROR, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %58, label %51

51:                                               ; preds = %36
  %52 = load %struct.msg_parse*, %struct.msg_parse** %10, align 8
  %53 = getelementptr inbounds %struct.msg_parse, %struct.msg_parse* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = call i64 @FLAGS_GET_RCODE(i32 %54)
  %56 = load i64, i64* @LDNS_RCODE_NXDOMAIN, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %58, label %64

58:                                               ; preds = %51, %36
  %59 = load %struct.msg_parse*, %struct.msg_parse** %10, align 8
  %60 = getelementptr inbounds %struct.msg_parse, %struct.msg_parse* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %58
  store i32 0, i32* %8, align 4
  br label %117

64:                                               ; preds = %58, %51
  %65 = load %struct.msg_parse*, %struct.msg_parse** %10, align 8
  %66 = getelementptr inbounds %struct.msg_parse, %struct.msg_parse* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = icmp eq i32 %67, 1
  br i1 %68, label %69, label %98

69:                                               ; preds = %64
  %70 = load i32*, i32** %9, align 8
  %71 = load %struct.msg_parse*, %struct.msg_parse** %10, align 8
  %72 = getelementptr inbounds %struct.msg_parse, %struct.msg_parse* %71, i32 0, i32 4
  %73 = load i32, i32* %72, align 8
  %74 = load %struct.query_info*, %struct.query_info** %11, align 8
  %75 = getelementptr inbounds %struct.query_info, %struct.query_info* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 8
  %77 = call i64 @dname_pkt_compare(i32* %70, i32 %73, i32 %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %69
  store i32 0, i32* %8, align 4
  br label %117

80:                                               ; preds = %69
  %81 = load %struct.msg_parse*, %struct.msg_parse** %10, align 8
  %82 = getelementptr inbounds %struct.msg_parse, %struct.msg_parse* %81, i32 0, i32 2
  %83 = load i64, i64* %82, align 8
  %84 = load %struct.query_info*, %struct.query_info** %11, align 8
  %85 = getelementptr inbounds %struct.query_info, %struct.query_info* %84, i32 0, i32 1
  %86 = load i64, i64* %85, align 8
  %87 = icmp ne i64 %83, %86
  br i1 %87, label %96, label %88

88:                                               ; preds = %80
  %89 = load %struct.msg_parse*, %struct.msg_parse** %10, align 8
  %90 = getelementptr inbounds %struct.msg_parse, %struct.msg_parse* %89, i32 0, i32 3
  %91 = load i64, i64* %90, align 8
  %92 = load %struct.query_info*, %struct.query_info** %11, align 8
  %93 = getelementptr inbounds %struct.query_info, %struct.query_info* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = icmp ne i64 %91, %94
  br i1 %95, label %96, label %97

96:                                               ; preds = %88, %80
  store i32 0, i32* %8, align 4
  br label %117

97:                                               ; preds = %88
  br label %98

98:                                               ; preds = %97, %64
  %99 = load i32*, i32** %9, align 8
  %100 = load %struct.msg_parse*, %struct.msg_parse** %10, align 8
  %101 = load %struct.query_info*, %struct.query_info** %11, align 8
  %102 = load %struct.regional*, %struct.regional** %13, align 8
  %103 = call i32 @scrub_normalize(i32* %99, %struct.msg_parse* %100, %struct.query_info* %101, %struct.regional* %102)
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %106, label %105

105:                                              ; preds = %98
  store i32 0, i32* %8, align 4
  br label %117

106:                                              ; preds = %98
  %107 = load i32*, i32** %9, align 8
  %108 = load %struct.msg_parse*, %struct.msg_parse** %10, align 8
  %109 = load %struct.query_info*, %struct.query_info** %11, align 8
  %110 = load i32*, i32** %12, align 8
  %111 = load %struct.module_env*, %struct.module_env** %14, align 8
  %112 = load %struct.iter_env*, %struct.iter_env** %15, align 8
  %113 = call i32 @scrub_sanitize(i32* %107, %struct.msg_parse* %108, %struct.query_info* %109, i32* %110, %struct.module_env* %111, %struct.iter_env* %112)
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %116, label %115

115:                                              ; preds = %106
  store i32 0, i32* %8, align 4
  br label %117

116:                                              ; preds = %106
  store i32 1, i32* %8, align 4
  br label %117

117:                                              ; preds = %116, %115, %105, %96, %79, %63, %35, %27
  %118 = load i32, i32* %8, align 4
  ret i32 %118
}

declare dso_local i32 @log_nametypeclass(i32, i8*, i32*, i32, i64) #1

declare dso_local i64 @FLAGS_GET_RCODE(i32) #1

declare dso_local i64 @dname_pkt_compare(i32*, i32, i32) #1

declare dso_local i32 @scrub_normalize(i32*, %struct.msg_parse*, %struct.query_info*, %struct.regional*) #1

declare dso_local i32 @scrub_sanitize(i32*, %struct.msg_parse*, %struct.query_info*, i32*, %struct.module_env*, %struct.iter_env*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
