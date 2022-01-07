; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/validator/extr_autotrust.c_autr_debug_print_tp.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/validator/extr_autotrust.c_autr_debug_print_tp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.trust_anchor = type { %struct.TYPE_2__*, i64, i64, i64, i64, i64, i32 }
%struct.TYPE_2__ = type { i32, %struct.autr_ta*, i64, i64, i64, i64, i64, i64 }
%struct.autr_ta = type { %struct.autr_ta* }

@.str = private unnamed_addr constant [20 x i8] c"trust point %s : %d\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"assembled %d DS and %d DNSKEYs\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"DS:\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"DNSKEY:\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"file %s\00", align 1
@.str.5 = private unnamed_addr constant [20 x i8] c"last_queried: %u %s\00", align 1
@.str.6 = private unnamed_addr constant [20 x i8] c"last_success: %u %s\00", align 1
@.str.7 = private unnamed_addr constant [23 x i8] c"next_probe_time: %u %s\00", align 1
@.str.8 = private unnamed_addr constant [19 x i8] c"query_interval: %u\00", align 1
@.str.9 = private unnamed_addr constant [15 x i8] c"retry_time: %u\00", align 1
@.str.10 = private unnamed_addr constant [17 x i8] c"query_failed: %u\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.trust_anchor*)* @autr_debug_print_tp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @autr_debug_print_tp(%struct.trust_anchor* %0) #0 {
  %2 = alloca %struct.trust_anchor*, align 8
  %3 = alloca %struct.autr_ta*, align 8
  %4 = alloca [257 x i8], align 16
  store %struct.trust_anchor* %0, %struct.trust_anchor** %2, align 8
  %5 = load %struct.trust_anchor*, %struct.trust_anchor** %2, align 8
  %6 = getelementptr inbounds %struct.trust_anchor, %struct.trust_anchor* %5, i32 0, i32 0
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %8 = icmp ne %struct.TYPE_2__* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  br label %165

10:                                               ; preds = %1
  %11 = load %struct.trust_anchor*, %struct.trust_anchor** %2, align 8
  %12 = getelementptr inbounds %struct.trust_anchor, %struct.trust_anchor* %11, i32 0, i32 6
  %13 = load i32, i32* %12, align 8
  %14 = getelementptr inbounds [257 x i8], [257 x i8]* %4, i64 0, i64 0
  %15 = call i32 @dname_str(i32 %13, i8* %14)
  %16 = getelementptr inbounds [257 x i8], [257 x i8]* %4, i64 0, i64 0
  %17 = load %struct.trust_anchor*, %struct.trust_anchor** %2, align 8
  %18 = getelementptr inbounds %struct.trust_anchor, %struct.trust_anchor* %17, i32 0, i32 5
  %19 = load i64, i64* %18, align 8
  %20 = trunc i64 %19 to i32
  %21 = call i32 (i8*, ...) @log_info(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i8* %16, i32 %20)
  %22 = load %struct.trust_anchor*, %struct.trust_anchor** %2, align 8
  %23 = getelementptr inbounds %struct.trust_anchor, %struct.trust_anchor* %22, i32 0, i32 4
  %24 = load i64, i64* %23, align 8
  %25 = trunc i64 %24 to i32
  %26 = load %struct.trust_anchor*, %struct.trust_anchor** %2, align 8
  %27 = getelementptr inbounds %struct.trust_anchor, %struct.trust_anchor* %26, i32 0, i32 3
  %28 = load i64, i64* %27, align 8
  %29 = trunc i64 %28 to i32
  %30 = call i32 (i8*, ...) @log_info(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %25, i32 %29)
  %31 = load %struct.trust_anchor*, %struct.trust_anchor** %2, align 8
  %32 = getelementptr inbounds %struct.trust_anchor, %struct.trust_anchor* %31, i32 0, i32 2
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %10
  %36 = load %struct.trust_anchor*, %struct.trust_anchor** %2, align 8
  %37 = getelementptr inbounds %struct.trust_anchor, %struct.trust_anchor* %36, i32 0, i32 2
  %38 = load i64, i64* %37, align 8
  %39 = call i32 @log_packed_rrset(i32 0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i64 %38)
  br label %40

40:                                               ; preds = %35, %10
  %41 = load %struct.trust_anchor*, %struct.trust_anchor** %2, align 8
  %42 = getelementptr inbounds %struct.trust_anchor, %struct.trust_anchor* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %50

45:                                               ; preds = %40
  %46 = load %struct.trust_anchor*, %struct.trust_anchor** %2, align 8
  %47 = getelementptr inbounds %struct.trust_anchor, %struct.trust_anchor* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = call i32 @log_packed_rrset(i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i64 %48)
  br label %50

50:                                               ; preds = %45, %40
  %51 = load %struct.trust_anchor*, %struct.trust_anchor** %2, align 8
  %52 = getelementptr inbounds %struct.trust_anchor, %struct.trust_anchor* %51, i32 0, i32 0
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = call i32 (i8*, ...) @log_info(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i32 %55)
  %57 = load %struct.trust_anchor*, %struct.trust_anchor** %2, align 8
  %58 = getelementptr inbounds %struct.trust_anchor, %struct.trust_anchor* %57, i32 0, i32 0
  %59 = load %struct.TYPE_2__*, %struct.TYPE_2__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 7
  %61 = getelementptr inbounds [257 x i8], [257 x i8]* %4, i64 0, i64 0
  %62 = call i32 @ctime_r(i64* %60, i8* %61)
  %63 = getelementptr inbounds [257 x i8], [257 x i8]* %4, i64 0, i64 0
  %64 = load i8, i8* %63, align 16
  %65 = icmp ne i8 %64, 0
  br i1 %65, label %66, label %72

66:                                               ; preds = %50
  %67 = getelementptr inbounds [257 x i8], [257 x i8]* %4, i64 0, i64 0
  %68 = call i32 @strlen(i8* %67)
  %69 = sub nsw i32 %68, 1
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds [257 x i8], [257 x i8]* %4, i64 0, i64 %70
  store i8 0, i8* %71, align 1
  br label %72

72:                                               ; preds = %66, %50
  %73 = load %struct.trust_anchor*, %struct.trust_anchor** %2, align 8
  %74 = getelementptr inbounds %struct.trust_anchor, %struct.trust_anchor* %73, i32 0, i32 0
  %75 = load %struct.TYPE_2__*, %struct.TYPE_2__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 7
  %77 = load i64, i64* %76, align 8
  %78 = trunc i64 %77 to i32
  %79 = getelementptr inbounds [257 x i8], [257 x i8]* %4, i64 0, i64 0
  %80 = call i32 (i8*, ...) @log_info(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0), i32 %78, i8* %79)
  %81 = load %struct.trust_anchor*, %struct.trust_anchor** %2, align 8
  %82 = getelementptr inbounds %struct.trust_anchor, %struct.trust_anchor* %81, i32 0, i32 0
  %83 = load %struct.TYPE_2__*, %struct.TYPE_2__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 6
  %85 = getelementptr inbounds [257 x i8], [257 x i8]* %4, i64 0, i64 0
  %86 = call i32 @ctime_r(i64* %84, i8* %85)
  %87 = getelementptr inbounds [257 x i8], [257 x i8]* %4, i64 0, i64 0
  %88 = load i8, i8* %87, align 16
  %89 = icmp ne i8 %88, 0
  br i1 %89, label %90, label %96

90:                                               ; preds = %72
  %91 = getelementptr inbounds [257 x i8], [257 x i8]* %4, i64 0, i64 0
  %92 = call i32 @strlen(i8* %91)
  %93 = sub nsw i32 %92, 1
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds [257 x i8], [257 x i8]* %4, i64 0, i64 %94
  store i8 0, i8* %95, align 1
  br label %96

96:                                               ; preds = %90, %72
  %97 = load %struct.trust_anchor*, %struct.trust_anchor** %2, align 8
  %98 = getelementptr inbounds %struct.trust_anchor, %struct.trust_anchor* %97, i32 0, i32 0
  %99 = load %struct.TYPE_2__*, %struct.TYPE_2__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %99, i32 0, i32 6
  %101 = load i64, i64* %100, align 8
  %102 = trunc i64 %101 to i32
  %103 = getelementptr inbounds [257 x i8], [257 x i8]* %4, i64 0, i64 0
  %104 = call i32 (i8*, ...) @log_info(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i64 0, i64 0), i32 %102, i8* %103)
  %105 = load %struct.trust_anchor*, %struct.trust_anchor** %2, align 8
  %106 = getelementptr inbounds %struct.trust_anchor, %struct.trust_anchor* %105, i32 0, i32 0
  %107 = load %struct.TYPE_2__*, %struct.TYPE_2__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %107, i32 0, i32 5
  %109 = getelementptr inbounds [257 x i8], [257 x i8]* %4, i64 0, i64 0
  %110 = call i32 @ctime_r(i64* %108, i8* %109)
  %111 = getelementptr inbounds [257 x i8], [257 x i8]* %4, i64 0, i64 0
  %112 = load i8, i8* %111, align 16
  %113 = icmp ne i8 %112, 0
  br i1 %113, label %114, label %120

114:                                              ; preds = %96
  %115 = getelementptr inbounds [257 x i8], [257 x i8]* %4, i64 0, i64 0
  %116 = call i32 @strlen(i8* %115)
  %117 = sub nsw i32 %116, 1
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds [257 x i8], [257 x i8]* %4, i64 0, i64 %118
  store i8 0, i8* %119, align 1
  br label %120

120:                                              ; preds = %114, %96
  %121 = load %struct.trust_anchor*, %struct.trust_anchor** %2, align 8
  %122 = getelementptr inbounds %struct.trust_anchor, %struct.trust_anchor* %121, i32 0, i32 0
  %123 = load %struct.TYPE_2__*, %struct.TYPE_2__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %123, i32 0, i32 5
  %125 = load i64, i64* %124, align 8
  %126 = trunc i64 %125 to i32
  %127 = getelementptr inbounds [257 x i8], [257 x i8]* %4, i64 0, i64 0
  %128 = call i32 (i8*, ...) @log_info(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0), i32 %126, i8* %127)
  %129 = load %struct.trust_anchor*, %struct.trust_anchor** %2, align 8
  %130 = getelementptr inbounds %struct.trust_anchor, %struct.trust_anchor* %129, i32 0, i32 0
  %131 = load %struct.TYPE_2__*, %struct.TYPE_2__** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %131, i32 0, i32 4
  %133 = load i64, i64* %132, align 8
  %134 = trunc i64 %133 to i32
  %135 = call i32 (i8*, ...) @log_info(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.8, i64 0, i64 0), i32 %134)
  %136 = load %struct.trust_anchor*, %struct.trust_anchor** %2, align 8
  %137 = getelementptr inbounds %struct.trust_anchor, %struct.trust_anchor* %136, i32 0, i32 0
  %138 = load %struct.TYPE_2__*, %struct.TYPE_2__** %137, align 8
  %139 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %138, i32 0, i32 3
  %140 = load i64, i64* %139, align 8
  %141 = trunc i64 %140 to i32
  %142 = call i32 (i8*, ...) @log_info(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.9, i64 0, i64 0), i32 %141)
  %143 = load %struct.trust_anchor*, %struct.trust_anchor** %2, align 8
  %144 = getelementptr inbounds %struct.trust_anchor, %struct.trust_anchor* %143, i32 0, i32 0
  %145 = load %struct.TYPE_2__*, %struct.TYPE_2__** %144, align 8
  %146 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %145, i32 0, i32 2
  %147 = load i64, i64* %146, align 8
  %148 = trunc i64 %147 to i32
  %149 = call i32 (i8*, ...) @log_info(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.10, i64 0, i64 0), i32 %148)
  %150 = load %struct.trust_anchor*, %struct.trust_anchor** %2, align 8
  %151 = getelementptr inbounds %struct.trust_anchor, %struct.trust_anchor* %150, i32 0, i32 0
  %152 = load %struct.TYPE_2__*, %struct.TYPE_2__** %151, align 8
  %153 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %152, i32 0, i32 1
  %154 = load %struct.autr_ta*, %struct.autr_ta** %153, align 8
  store %struct.autr_ta* %154, %struct.autr_ta** %3, align 8
  br label %155

155:                                              ; preds = %161, %120
  %156 = load %struct.autr_ta*, %struct.autr_ta** %3, align 8
  %157 = icmp ne %struct.autr_ta* %156, null
  br i1 %157, label %158, label %165

158:                                              ; preds = %155
  %159 = load %struct.autr_ta*, %struct.autr_ta** %3, align 8
  %160 = call i32 @autr_debug_print_ta(%struct.autr_ta* %159)
  br label %161

161:                                              ; preds = %158
  %162 = load %struct.autr_ta*, %struct.autr_ta** %3, align 8
  %163 = getelementptr inbounds %struct.autr_ta, %struct.autr_ta* %162, i32 0, i32 0
  %164 = load %struct.autr_ta*, %struct.autr_ta** %163, align 8
  store %struct.autr_ta* %164, %struct.autr_ta** %3, align 8
  br label %155

165:                                              ; preds = %9, %155
  ret void
}

declare dso_local i32 @dname_str(i32, i8*) #1

declare dso_local i32 @log_info(i8*, ...) #1

declare dso_local i32 @log_packed_rrset(i32, i8*, i64) #1

declare dso_local i32 @ctime_r(i64*, i8*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @autr_debug_print_ta(%struct.autr_ta*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
