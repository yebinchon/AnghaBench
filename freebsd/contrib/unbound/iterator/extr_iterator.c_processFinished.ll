; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/iterator/extr_iterator.c_processFinished.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/iterator/extr_iterator.c_processFinished.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.module_qstate = type { i32, %struct.TYPE_9__*, i32, i32, i32, i32, i32, i32, i32* }
%struct.TYPE_9__ = type { %struct.TYPE_8__*, i32 }
%struct.TYPE_8__ = type { i32, i32 }
%struct.iter_qstate = type { %struct.TYPE_9__*, %struct.TYPE_7__*, i64, i64, %struct.TYPE_6__*, i32, i64 }
%struct.TYPE_7__ = type { i64 }
%struct.TYPE_6__ = type { %struct.TYPE_8__* }

@VERB_QUERY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"finishing processing for\00", align 1
@VERB_ALGO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"No response is set, servfail\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"(no response found at query finish)\00", align 1
@LDNS_RCODE_SERVFAIL = common dso_local global i32 0, align 4
@BIT_RA = common dso_local global i32 0, align 4
@BIT_AA = common dso_local global i32 0, align 4
@BIT_QR = common dso_local global i32 0, align 4
@module_finished = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [30 x i8] c"prepend rrsets: out of memory\00", align 1
@sec_status_unchecked = common dso_local global i32 0, align 4
@BIT_RD = common dso_local global i32 0, align 4
@LDNS_RCODE_NOERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.module_qstate*, %struct.iter_qstate*, i32)* @processFinished to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @processFinished(%struct.module_qstate* %0, %struct.iter_qstate* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.module_qstate*, align 8
  %6 = alloca %struct.iter_qstate*, align 8
  %7 = alloca i32, align 4
  store %struct.module_qstate* %0, %struct.module_qstate** %5, align 8
  store %struct.iter_qstate* %1, %struct.iter_qstate** %6, align 8
  store i32 %2, i32* %7, align 4
  %8 = load i32, i32* @VERB_QUERY, align 4
  %9 = load %struct.module_qstate*, %struct.module_qstate** %5, align 8
  %10 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %9, i32 0, i32 5
  %11 = call i32 @log_query_info(i32 %8, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32* %10)
  %12 = load %struct.module_qstate*, %struct.module_qstate** %5, align 8
  %13 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %12, i32 0, i32 7
  %14 = load i32, i32* %13, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %59, label %16

16:                                               ; preds = %3
  %17 = load %struct.iter_qstate*, %struct.iter_qstate** %6, align 8
  %18 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %17, i32 0, i32 6
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %59

21:                                               ; preds = %16
  %22 = load %struct.iter_qstate*, %struct.iter_qstate** %6, align 8
  %23 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %22, i32 0, i32 5
  %24 = load i32, i32* %23, align 8
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %59, label %26

26:                                               ; preds = %21
  %27 = load %struct.module_qstate*, %struct.module_qstate** %5, align 8
  %28 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %27, i32 0, i32 6
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.module_qstate*, %struct.module_qstate** %5, align 8
  %31 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %30, i32 0, i32 5
  %32 = load %struct.iter_qstate*, %struct.iter_qstate** %6, align 8
  %33 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %32, i32 0, i32 4
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %33, align 8
  %35 = icmp ne %struct.TYPE_6__* %34, null
  br i1 %35, label %36, label %42

36:                                               ; preds = %26
  %37 = load %struct.iter_qstate*, %struct.iter_qstate** %6, align 8
  %38 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %37, i32 0, i32 4
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  %41 = load %struct.TYPE_8__*, %struct.TYPE_8__** %40, align 8
  br label %56

42:                                               ; preds = %26
  %43 = load %struct.iter_qstate*, %struct.iter_qstate** %6, align 8
  %44 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %43, i32 0, i32 0
  %45 = load %struct.TYPE_9__*, %struct.TYPE_9__** %44, align 8
  %46 = icmp ne %struct.TYPE_9__* %45, null
  br i1 %46, label %47, label %53

47:                                               ; preds = %42
  %48 = load %struct.iter_qstate*, %struct.iter_qstate** %6, align 8
  %49 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %48, i32 0, i32 0
  %50 = load %struct.TYPE_9__*, %struct.TYPE_9__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %50, i32 0, i32 0
  %52 = load %struct.TYPE_8__*, %struct.TYPE_8__** %51, align 8
  br label %54

53:                                               ; preds = %42
  br label %54

54:                                               ; preds = %53, %47
  %55 = phi %struct.TYPE_8__* [ %52, %47 ], [ null, %53 ]
  br label %56

56:                                               ; preds = %54, %36
  %57 = phi %struct.TYPE_8__* [ %41, %36 ], [ %55, %54 ]
  %58 = call i32 @iter_store_parentside_neg(i32 %29, i32* %31, %struct.TYPE_8__* %57)
  br label %59

59:                                               ; preds = %56, %21, %16, %3
  %60 = load %struct.iter_qstate*, %struct.iter_qstate** %6, align 8
  %61 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %60, i32 0, i32 0
  %62 = load %struct.TYPE_9__*, %struct.TYPE_9__** %61, align 8
  %63 = icmp ne %struct.TYPE_9__* %62, null
  br i1 %63, label %73, label %64

64:                                               ; preds = %59
  %65 = load i32, i32* @VERB_ALGO, align 4
  %66 = call i32 @verbose(i32 %65, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  %67 = load %struct.module_qstate*, %struct.module_qstate** %5, align 8
  %68 = call i32 @errinf(%struct.module_qstate* %67, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0))
  %69 = load %struct.module_qstate*, %struct.module_qstate** %5, align 8
  %70 = load i32, i32* %7, align 4
  %71 = load i32, i32* @LDNS_RCODE_SERVFAIL, align 4
  %72 = call i32 @error_response(%struct.module_qstate* %69, i32 %70, i32 %71)
  store i32 %72, i32* %4, align 4
  br label %205

73:                                               ; preds = %59
  %74 = load i32, i32* @BIT_RA, align 4
  %75 = load %struct.iter_qstate*, %struct.iter_qstate** %6, align 8
  %76 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %75, i32 0, i32 0
  %77 = load %struct.TYPE_9__*, %struct.TYPE_9__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %77, i32 0, i32 0
  %79 = load %struct.TYPE_8__*, %struct.TYPE_8__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = or i32 %81, %74
  store i32 %82, i32* %80, align 4
  %83 = load i32, i32* @BIT_AA, align 4
  %84 = xor i32 %83, -1
  %85 = load %struct.iter_qstate*, %struct.iter_qstate** %6, align 8
  %86 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %85, i32 0, i32 0
  %87 = load %struct.TYPE_9__*, %struct.TYPE_9__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %87, i32 0, i32 0
  %89 = load %struct.TYPE_8__*, %struct.TYPE_8__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = and i32 %91, %84
  store i32 %92, i32* %90, align 4
  %93 = load i32, i32* @BIT_QR, align 4
  %94 = load %struct.iter_qstate*, %struct.iter_qstate** %6, align 8
  %95 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %94, i32 0, i32 0
  %96 = load %struct.TYPE_9__*, %struct.TYPE_9__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %96, i32 0, i32 0
  %98 = load %struct.TYPE_8__*, %struct.TYPE_8__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = or i32 %100, %93
  store i32 %101, i32* %99, align 4
  %102 = load i32, i32* @module_finished, align 4
  %103 = load %struct.module_qstate*, %struct.module_qstate** %5, align 8
  %104 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %103, i32 0, i32 8
  %105 = load i32*, i32** %104, align 8
  %106 = load i32, i32* %7, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i32, i32* %105, i64 %107
  store i32 %102, i32* %108, align 4
  %109 = load %struct.iter_qstate*, %struct.iter_qstate** %6, align 8
  %110 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %109, i32 0, i32 3
  %111 = load i64, i64* %110, align 8
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %118, label %113

113:                                              ; preds = %73
  %114 = load %struct.iter_qstate*, %struct.iter_qstate** %6, align 8
  %115 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %114, i32 0, i32 2
  %116 = load i64, i64* %115, align 8
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %196

118:                                              ; preds = %113, %73
  %119 = load %struct.iter_qstate*, %struct.iter_qstate** %6, align 8
  %120 = load %struct.iter_qstate*, %struct.iter_qstate** %6, align 8
  %121 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %120, i32 0, i32 0
  %122 = load %struct.TYPE_9__*, %struct.TYPE_9__** %121, align 8
  %123 = load %struct.module_qstate*, %struct.module_qstate** %5, align 8
  %124 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %123, i32 0, i32 3
  %125 = load i32, i32* %124, align 4
  %126 = call i32 @iter_prepend(%struct.iter_qstate* %119, %struct.TYPE_9__* %122, i32 %125)
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %134, label %128

128:                                              ; preds = %118
  %129 = call i32 @log_err(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0))
  %130 = load %struct.module_qstate*, %struct.module_qstate** %5, align 8
  %131 = load i32, i32* %7, align 4
  %132 = load i32, i32* @LDNS_RCODE_SERVFAIL, align 4
  %133 = call i32 @error_response(%struct.module_qstate* %130, i32 %131, i32 %132)
  store i32 %133, i32* %4, align 4
  br label %205

134:                                              ; preds = %118
  %135 = load %struct.module_qstate*, %struct.module_qstate** %5, align 8
  %136 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %135, i32 0, i32 5
  %137 = load i32, i32* %136, align 4
  %138 = load %struct.iter_qstate*, %struct.iter_qstate** %6, align 8
  %139 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %138, i32 0, i32 0
  %140 = load %struct.TYPE_9__*, %struct.TYPE_9__** %139, align 8
  %141 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %140, i32 0, i32 1
  store i32 %137, i32* %141, align 8
  %142 = load i32, i32* @sec_status_unchecked, align 4
  %143 = load %struct.iter_qstate*, %struct.iter_qstate** %6, align 8
  %144 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %143, i32 0, i32 0
  %145 = load %struct.TYPE_9__*, %struct.TYPE_9__** %144, align 8
  %146 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %145, i32 0, i32 0
  %147 = load %struct.TYPE_8__*, %struct.TYPE_8__** %146, align 8
  %148 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %147, i32 0, i32 0
  store i32 %142, i32* %148, align 4
  %149 = load %struct.module_qstate*, %struct.module_qstate** %5, align 8
  %150 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %149, i32 0, i32 7
  %151 = load i32, i32* %150, align 4
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %195, label %153

153:                                              ; preds = %134
  %154 = load %struct.module_qstate*, %struct.module_qstate** %5, align 8
  %155 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 8
  %157 = load i32, i32* @BIT_RD, align 4
  %158 = and i32 %156, %157
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %195

160:                                              ; preds = %153
  %161 = load %struct.module_qstate*, %struct.module_qstate** %5, align 8
  %162 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %161, i32 0, i32 6
  %163 = load i32, i32* %162, align 8
  %164 = load %struct.module_qstate*, %struct.module_qstate** %5, align 8
  %165 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %164, i32 0, i32 5
  %166 = load %struct.iter_qstate*, %struct.iter_qstate** %6, align 8
  %167 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %166, i32 0, i32 0
  %168 = load %struct.TYPE_9__*, %struct.TYPE_9__** %167, align 8
  %169 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %168, i32 0, i32 0
  %170 = load %struct.TYPE_8__*, %struct.TYPE_8__** %169, align 8
  %171 = load %struct.module_qstate*, %struct.module_qstate** %5, align 8
  %172 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %171, i32 0, i32 4
  %173 = load i32, i32* %172, align 8
  %174 = load %struct.iter_qstate*, %struct.iter_qstate** %6, align 8
  %175 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %174, i32 0, i32 1
  %176 = load %struct.TYPE_7__*, %struct.TYPE_7__** %175, align 8
  %177 = icmp ne %struct.TYPE_7__* %176, null
  br i1 %177, label %178, label %185

178:                                              ; preds = %160
  %179 = load %struct.iter_qstate*, %struct.iter_qstate** %6, align 8
  %180 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %179, i32 0, i32 1
  %181 = load %struct.TYPE_7__*, %struct.TYPE_7__** %180, align 8
  %182 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %181, i32 0, i32 0
  %183 = load i64, i64* %182, align 8
  %184 = icmp ne i64 %183, 0
  br label %185

185:                                              ; preds = %178, %160
  %186 = phi i1 [ false, %160 ], [ %184, %178 ]
  %187 = zext i1 %186 to i32
  %188 = load %struct.module_qstate*, %struct.module_qstate** %5, align 8
  %189 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %188, i32 0, i32 3
  %190 = load i32, i32* %189, align 4
  %191 = load %struct.module_qstate*, %struct.module_qstate** %5, align 8
  %192 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %191, i32 0, i32 0
  %193 = load i32, i32* %192, align 8
  %194 = call i32 @iter_dns_store(i32 %163, i32* %165, %struct.TYPE_8__* %170, i32 0, i32 %173, i32 %187, i32 %190, i32 %193)
  br label %195

195:                                              ; preds = %185, %153, %134
  br label %196

196:                                              ; preds = %195, %113
  %197 = load i32, i32* @LDNS_RCODE_NOERROR, align 4
  %198 = load %struct.module_qstate*, %struct.module_qstate** %5, align 8
  %199 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %198, i32 0, i32 2
  store i32 %197, i32* %199, align 8
  %200 = load %struct.iter_qstate*, %struct.iter_qstate** %6, align 8
  %201 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %200, i32 0, i32 0
  %202 = load %struct.TYPE_9__*, %struct.TYPE_9__** %201, align 8
  %203 = load %struct.module_qstate*, %struct.module_qstate** %5, align 8
  %204 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %203, i32 0, i32 1
  store %struct.TYPE_9__* %202, %struct.TYPE_9__** %204, align 8
  store i32 0, i32* %4, align 4
  br label %205

205:                                              ; preds = %196, %128, %64
  %206 = load i32, i32* %4, align 4
  ret i32 %206
}

declare dso_local i32 @log_query_info(i32, i8*, i32*) #1

declare dso_local i32 @iter_store_parentside_neg(i32, i32*, %struct.TYPE_8__*) #1

declare dso_local i32 @verbose(i32, i8*) #1

declare dso_local i32 @errinf(%struct.module_qstate*, i8*) #1

declare dso_local i32 @error_response(%struct.module_qstate*, i32, i32) #1

declare dso_local i32 @iter_prepend(%struct.iter_qstate*, %struct.TYPE_9__*, i32) #1

declare dso_local i32 @log_err(i8*) #1

declare dso_local i32 @iter_dns_store(i32, i32*, %struct.TYPE_8__*, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
