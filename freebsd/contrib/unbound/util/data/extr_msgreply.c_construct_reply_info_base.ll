; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/util/data/extr_msgreply.c_construct_reply_info_base.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/util/data/extr_msgreply.c_construct_reply_info_base.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.reply_info = type { i64, i64, i64, i64, i64, i32, %struct.ub_packed_rrset_key**, %struct.ub_packed_rrset_key**, i64, i8*, i8*, i8*, i32 }
%struct.ub_packed_rrset_key = type { i32 }
%struct.regional = type { i32 }

@RR_COUNT_MAX = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.reply_info* @construct_reply_info_base(%struct.regional* %0, i32 %1, i64 %2, i8* %3, i8* %4, i8* %5, i64 %6, i64 %7, i64 %8, i64 %9, i32 %10) #0 {
  %12 = alloca %struct.reply_info*, align 8
  %13 = alloca %struct.regional*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i32, align 4
  %24 = alloca %struct.reply_info*, align 8
  %25 = alloca i64, align 8
  store %struct.regional* %0, %struct.regional** %13, align 8
  store i32 %1, i32* %14, align 4
  store i64 %2, i64* %15, align 8
  store i8* %3, i8** %16, align 8
  store i8* %4, i8** %17, align 8
  store i8* %5, i8** %18, align 8
  store i64 %6, i64* %19, align 8
  store i64 %7, i64* %20, align 8
  store i64 %8, i64* %21, align 8
  store i64 %9, i64* %22, align 8
  store i32 %10, i32* %23, align 4
  %26 = load i64, i64* %22, align 8
  %27 = mul i64 8, %26
  %28 = add i64 100, %27
  store i64 %28, i64* %25, align 8
  %29 = load i64, i64* %22, align 8
  %30 = load i64, i64* @RR_COUNT_MAX, align 8
  %31 = icmp uge i64 %29, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %11
  store %struct.reply_info* null, %struct.reply_info** %12, align 8
  br label %123

33:                                               ; preds = %11
  %34 = load %struct.regional*, %struct.regional** %13, align 8
  %35 = icmp ne %struct.regional* %34, null
  br i1 %35, label %36, label %41

36:                                               ; preds = %33
  %37 = load %struct.regional*, %struct.regional** %13, align 8
  %38 = load i64, i64* %25, align 8
  %39 = call i64 @regional_alloc(%struct.regional* %37, i64 %38)
  %40 = inttoptr i64 %39 to %struct.reply_info*
  store %struct.reply_info* %40, %struct.reply_info** %24, align 8
  br label %48

41:                                               ; preds = %33
  %42 = load i64, i64* %25, align 8
  %43 = load i64, i64* %22, align 8
  %44 = mul i64 4, %43
  %45 = add i64 %42, %44
  %46 = call i64 @malloc(i64 %45)
  %47 = inttoptr i64 %46 to %struct.reply_info*
  store %struct.reply_info* %47, %struct.reply_info** %24, align 8
  br label %48

48:                                               ; preds = %41, %36
  %49 = load %struct.reply_info*, %struct.reply_info** %24, align 8
  %50 = icmp ne %struct.reply_info* %49, null
  br i1 %50, label %52, label %51

51:                                               ; preds = %48
  store %struct.reply_info* null, %struct.reply_info** %12, align 8
  br label %123

52:                                               ; preds = %48
  %53 = load i32, i32* %14, align 4
  %54 = load %struct.reply_info*, %struct.reply_info** %24, align 8
  %55 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %54, i32 0, i32 12
  store i32 %53, i32* %55, align 8
  %56 = load i64, i64* %15, align 8
  %57 = load %struct.reply_info*, %struct.reply_info** %24, align 8
  %58 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %57, i32 0, i32 0
  store i64 %56, i64* %58, align 8
  %59 = load i8*, i8** %16, align 8
  %60 = load %struct.reply_info*, %struct.reply_info** %24, align 8
  %61 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %60, i32 0, i32 11
  store i8* %59, i8** %61, align 8
  %62 = load i8*, i8** %17, align 8
  %63 = load %struct.reply_info*, %struct.reply_info** %24, align 8
  %64 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %63, i32 0, i32 10
  store i8* %62, i8** %64, align 8
  %65 = load i8*, i8** %18, align 8
  %66 = load %struct.reply_info*, %struct.reply_info** %24, align 8
  %67 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %66, i32 0, i32 9
  store i8* %65, i8** %67, align 8
  %68 = load i64, i64* %19, align 8
  %69 = load %struct.reply_info*, %struct.reply_info** %24, align 8
  %70 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %69, i32 0, i32 1
  store i64 %68, i64* %70, align 8
  %71 = load i64, i64* %20, align 8
  %72 = load %struct.reply_info*, %struct.reply_info** %24, align 8
  %73 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %72, i32 0, i32 2
  store i64 %71, i64* %73, align 8
  %74 = load i64, i64* %21, align 8
  %75 = load %struct.reply_info*, %struct.reply_info** %24, align 8
  %76 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %75, i32 0, i32 3
  store i64 %74, i64* %76, align 8
  %77 = load i64, i64* %22, align 8
  %78 = load %struct.reply_info*, %struct.reply_info** %24, align 8
  %79 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %78, i32 0, i32 4
  store i64 %77, i64* %79, align 8
  %80 = load i32, i32* %23, align 4
  %81 = load %struct.reply_info*, %struct.reply_info** %24, align 8
  %82 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %81, i32 0, i32 5
  store i32 %80, i32* %82, align 8
  %83 = load %struct.reply_info*, %struct.reply_info** %24, align 8
  %84 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %83, i32 0, i32 8
  store i64 0, i64* %84, align 8
  %85 = load %struct.regional*, %struct.regional** %13, align 8
  %86 = icmp ne %struct.regional* %85, null
  br i1 %86, label %87, label %94

87:                                               ; preds = %52
  %88 = load %struct.reply_info*, %struct.reply_info** %24, align 8
  %89 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %88, i32 0, i32 6
  %90 = load %struct.ub_packed_rrset_key**, %struct.ub_packed_rrset_key*** %89, align 8
  %91 = getelementptr inbounds %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %90, i64 0
  %92 = load %struct.reply_info*, %struct.reply_info** %24, align 8
  %93 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %92, i32 0, i32 7
  store %struct.ub_packed_rrset_key** %91, %struct.ub_packed_rrset_key*** %93, align 8
  br label %102

94:                                               ; preds = %52
  %95 = load %struct.reply_info*, %struct.reply_info** %24, align 8
  %96 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %95, i32 0, i32 6
  %97 = load %struct.ub_packed_rrset_key**, %struct.ub_packed_rrset_key*** %96, align 8
  %98 = load i64, i64* %22, align 8
  %99 = getelementptr inbounds %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %97, i64 %98
  %100 = load %struct.reply_info*, %struct.reply_info** %24, align 8
  %101 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %100, i32 0, i32 7
  store %struct.ub_packed_rrset_key** %99, %struct.ub_packed_rrset_key*** %101, align 8
  br label %102

102:                                              ; preds = %94, %87
  %103 = load %struct.reply_info*, %struct.reply_info** %24, align 8
  %104 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %103, i32 0, i32 7
  %105 = load %struct.ub_packed_rrset_key**, %struct.ub_packed_rrset_key*** %104, align 8
  %106 = load i64, i64* %22, align 8
  %107 = mul i64 8, %106
  %108 = trunc i64 %107 to i32
  %109 = call i32 @memset(%struct.ub_packed_rrset_key** %105, i32 0, i32 %108)
  %110 = load %struct.regional*, %struct.regional** %13, align 8
  %111 = icmp ne %struct.regional* %110, null
  br i1 %111, label %121, label %112

112:                                              ; preds = %102
  %113 = load %struct.reply_info*, %struct.reply_info** %24, align 8
  %114 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %113, i32 0, i32 6
  %115 = load %struct.ub_packed_rrset_key**, %struct.ub_packed_rrset_key*** %114, align 8
  %116 = getelementptr inbounds %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %115, i64 0
  %117 = load i64, i64* %22, align 8
  %118 = mul i64 4, %117
  %119 = trunc i64 %118 to i32
  %120 = call i32 @memset(%struct.ub_packed_rrset_key** %116, i32 0, i32 %119)
  br label %121

121:                                              ; preds = %112, %102
  %122 = load %struct.reply_info*, %struct.reply_info** %24, align 8
  store %struct.reply_info* %122, %struct.reply_info** %12, align 8
  br label %123

123:                                              ; preds = %121, %51, %32
  %124 = load %struct.reply_info*, %struct.reply_info** %12, align 8
  ret %struct.reply_info* %124
}

declare dso_local i64 @regional_alloc(%struct.regional*, i64) #1

declare dso_local i64 @malloc(i64) #1

declare dso_local i32 @memset(%struct.ub_packed_rrset_key**, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
