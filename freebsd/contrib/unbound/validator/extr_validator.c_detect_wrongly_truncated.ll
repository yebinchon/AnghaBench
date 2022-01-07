; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/validator/extr_validator.c_detect_wrongly_truncated.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/validator/extr_validator.c_detect_wrongly_truncated.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.reply_info = type { i32, i64, %struct.TYPE_6__** }
%struct.TYPE_6__ = type { %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_4__ = type { i32 }
%struct.packed_rrset_data = type { i64 }

@LDNS_RR_TYPE_NS = common dso_local global i64 0, align 8
@sec_status_secure = common dso_local global i64 0, align 8
@VERB_ALGO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"truncating to minimal response\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.reply_info*)* @detect_wrongly_truncated to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @detect_wrongly_truncated(%struct.reply_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.reply_info*, align 8
  %4 = alloca i64, align 8
  store %struct.reply_info* %0, %struct.reply_info** %3, align 8
  %5 = load %struct.reply_info*, %struct.reply_info** %3, align 8
  %6 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = icmp ne i32 %7, 1
  br i1 %8, label %14, label %9

9:                                                ; preds = %1
  %10 = load %struct.reply_info*, %struct.reply_info** %3, align 8
  %11 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %9, %1
  store i32 0, i32* %2, align 4
  br label %79

15:                                               ; preds = %9
  %16 = load %struct.reply_info*, %struct.reply_info** %3, align 8
  %17 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %16, i32 0, i32 2
  %18 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %17, align 8
  %19 = load %struct.reply_info*, %struct.reply_info** %3, align 8
  %20 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %18, i64 %21
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = call i64 @ntohs(i32 %26)
  %28 = load i64, i64* @LDNS_RR_TYPE_NS, align 8
  %29 = icmp ne i64 %27, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %15
  store i32 0, i32* %2, align 4
  br label %79

31:                                               ; preds = %15
  %32 = load %struct.reply_info*, %struct.reply_info** %3, align 8
  %33 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %32, i32 0, i32 2
  %34 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %33, align 8
  %35 = load %struct.reply_info*, %struct.reply_info** %3, align 8
  %36 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %34, i64 %37
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = inttoptr i64 %42 to %struct.packed_rrset_data*
  %44 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @sec_status_secure, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %49

48:                                               ; preds = %31
  store i32 0, i32* %2, align 4
  br label %79

49:                                               ; preds = %31
  store i64 0, i64* %4, align 8
  br label %50

50:                                               ; preds = %73, %49
  %51 = load i64, i64* %4, align 8
  %52 = load %struct.reply_info*, %struct.reply_info** %3, align 8
  %53 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = icmp ult i64 %51, %54
  br i1 %55, label %56, label %76

56:                                               ; preds = %50
  %57 = load %struct.reply_info*, %struct.reply_info** %3, align 8
  %58 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %57, i32 0, i32 2
  %59 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %58, align 8
  %60 = load i64, i64* %4, align 8
  %61 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %59, i64 %60
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = inttoptr i64 %65 to %struct.packed_rrset_data*
  %67 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* @sec_status_secure, align 8
  %70 = icmp ne i64 %68, %69
  br i1 %70, label %71, label %72

71:                                               ; preds = %56
  store i32 0, i32* %2, align 4
  br label %79

72:                                               ; preds = %56
  br label %73

73:                                               ; preds = %72
  %74 = load i64, i64* %4, align 8
  %75 = add i64 %74, 1
  store i64 %75, i64* %4, align 8
  br label %50

76:                                               ; preds = %50
  %77 = load i32, i32* @VERB_ALGO, align 4
  %78 = call i32 @verbose(i32 %77, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %2, align 4
  br label %79

79:                                               ; preds = %76, %71, %48, %30, %14
  %80 = load i32, i32* %2, align 4
  ret i32 %80
}

declare dso_local i64 @ntohs(i32) #1

declare dso_local i32 @verbose(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
