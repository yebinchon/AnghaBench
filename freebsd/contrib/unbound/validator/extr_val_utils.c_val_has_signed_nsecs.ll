; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/validator/extr_val_utils.c_val_has_signed_nsecs.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/validator/extr_val_utils.c_val_has_signed_nsecs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.reply_info = type { i64, i64, %struct.TYPE_6__** }
%struct.TYPE_6__ = type { %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_4__ = type { i64 }
%struct.packed_rrset_data = type { i64 }

@LDNS_RR_TYPE_NSEC = common dso_local global i32 0, align 4
@LDNS_RR_TYPE_NSEC3 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"no DNSSEC records\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"no signatures over NSECs\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"no signatures over NSEC3s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @val_has_signed_nsecs(%struct.reply_info* %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.reply_info*, align 8
  %5 = alloca i8**, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.packed_rrset_data*, align 8
  store %struct.reply_info* %0, %struct.reply_info** %4, align 8
  store i8** %1, i8*** %5, align 8
  store i64 0, i64* %7, align 8
  store i64 0, i64* %8, align 8
  %10 = load %struct.reply_info*, %struct.reply_info** %4, align 8
  %11 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  store i64 %12, i64* %6, align 8
  br label %13

13:                                               ; preds = %77, %2
  %14 = load i64, i64* %6, align 8
  %15 = load %struct.reply_info*, %struct.reply_info** %4, align 8
  %16 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load %struct.reply_info*, %struct.reply_info** %4, align 8
  %19 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = add i64 %17, %20
  %22 = icmp ult i64 %14, %21
  br i1 %22, label %23, label %80

23:                                               ; preds = %13
  %24 = load %struct.reply_info*, %struct.reply_info** %4, align 8
  %25 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %24, i32 0, i32 2
  %26 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %25, align 8
  %27 = load i64, i64* %6, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %26, i64 %27
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i32, i32* @LDNS_RR_TYPE_NSEC, align 4
  %34 = call i64 @htons(i32 %33)
  %35 = icmp eq i64 %32, %34
  br i1 %35, label %36, label %39

36:                                               ; preds = %23
  %37 = load i64, i64* %7, align 8
  %38 = add i64 %37, 1
  store i64 %38, i64* %7, align 8
  br label %57

39:                                               ; preds = %23
  %40 = load %struct.reply_info*, %struct.reply_info** %4, align 8
  %41 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %40, i32 0, i32 2
  %42 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %41, align 8
  %43 = load i64, i64* %6, align 8
  %44 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %42, i64 %43
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i32, i32* @LDNS_RR_TYPE_NSEC3, align 4
  %50 = call i64 @htons(i32 %49)
  %51 = icmp eq i64 %48, %50
  br i1 %51, label %52, label %55

52:                                               ; preds = %39
  %53 = load i64, i64* %8, align 8
  %54 = add i64 %53, 1
  store i64 %54, i64* %8, align 8
  br label %56

55:                                               ; preds = %39
  br label %77

56:                                               ; preds = %52
  br label %57

57:                                               ; preds = %56, %36
  %58 = load %struct.reply_info*, %struct.reply_info** %4, align 8
  %59 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %58, i32 0, i32 2
  %60 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %59, align 8
  %61 = load i64, i64* %6, align 8
  %62 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %60, i64 %61
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = inttoptr i64 %66 to %struct.packed_rrset_data*
  store %struct.packed_rrset_data* %67, %struct.packed_rrset_data** %9, align 8
  %68 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %9, align 8
  %69 = icmp ne %struct.packed_rrset_data* %68, null
  br i1 %69, label %70, label %76

70:                                               ; preds = %57
  %71 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %9, align 8
  %72 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %70
  store i32 1, i32* %3, align 4
  br label %97

76:                                               ; preds = %70, %57
  br label %77

77:                                               ; preds = %76, %55
  %78 = load i64, i64* %6, align 8
  %79 = add i64 %78, 1
  store i64 %79, i64* %6, align 8
  br label %13

80:                                               ; preds = %13
  %81 = load i64, i64* %7, align 8
  %82 = icmp eq i64 %81, 0
  br i1 %82, label %83, label %88

83:                                               ; preds = %80
  %84 = load i64, i64* %8, align 8
  %85 = icmp eq i64 %84, 0
  br i1 %85, label %86, label %88

86:                                               ; preds = %83
  %87 = load i8**, i8*** %5, align 8
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i8** %87, align 8
  br label %96

88:                                               ; preds = %83, %80
  %89 = load i64, i64* %7, align 8
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %93

91:                                               ; preds = %88
  %92 = load i8**, i8*** %5, align 8
  store i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i8** %92, align 8
  br label %95

93:                                               ; preds = %88
  %94 = load i8**, i8*** %5, align 8
  store i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i8** %94, align 8
  br label %95

95:                                               ; preds = %93, %91
  br label %96

96:                                               ; preds = %95, %86
  store i32 0, i32* %3, align 4
  br label %97

97:                                               ; preds = %96, %75
  %98 = load i32, i32* %3, align 4
  ret i32 %98
}

declare dso_local i64 @htons(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
