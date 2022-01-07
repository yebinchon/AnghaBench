; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/services/cache/extr_rrset.c_need_to_update_rrset.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/services/cache/extr_rrset.c_need_to_update_rrset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.packed_rrset_data = type { i64, i64, i64, i64, i64, i64* }

@sec_status_secure = common dso_local global i64 0, align 8
@sec_status_bogus = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i64, i32, i32)* @need_to_update_rrset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @need_to_update_rrset(i8* %0, i8* %1, i64 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.packed_rrset_data*, align 8
  %13 = alloca %struct.packed_rrset_data*, align 8
  %14 = alloca i64, align 8
  store i8* %0, i8** %7, align 8
  store i8* %1, i8** %8, align 8
  store i64 %2, i64* %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %15 = load i8*, i8** %7, align 8
  %16 = bitcast i8* %15 to %struct.packed_rrset_data*
  store %struct.packed_rrset_data* %16, %struct.packed_rrset_data** %12, align 8
  %17 = load i8*, i8** %8, align 8
  %18 = bitcast i8* %17 to %struct.packed_rrset_data*
  store %struct.packed_rrset_data* %18, %struct.packed_rrset_data** %13, align 8
  %19 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %12, align 8
  %20 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @sec_status_secure, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %31

24:                                               ; preds = %5
  %25 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %13, align 8
  %26 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @sec_status_secure, align 8
  %29 = icmp ne i64 %27, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %24
  store i32 1, i32* %6, align 4
  br label %136

31:                                               ; preds = %24, %5
  %32 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %13, align 8
  %33 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @sec_status_bogus, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %47

37:                                               ; preds = %31
  %38 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %12, align 8
  %39 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @sec_status_bogus, align 8
  %42 = icmp ne i64 %40, %41
  br i1 %42, label %43, label %47

43:                                               ; preds = %37
  %44 = load i32, i32* %10, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %47, label %46

46:                                               ; preds = %43
  store i32 1, i32* %6, align 4
  br label %136

47:                                               ; preds = %43, %37, %31
  %48 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %12, align 8
  %49 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %13, align 8
  %52 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = icmp sgt i64 %50, %53
  br i1 %54, label %55, label %72

55:                                               ; preds = %47
  %56 = load i32, i32* %10, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %71

58:                                               ; preds = %55
  %59 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %13, align 8
  %60 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %59, i32 0, i32 2
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* %9, align 8
  %63 = icmp sge i64 %61, %62
  br i1 %63, label %64, label %71

64:                                               ; preds = %58
  %65 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %13, align 8
  %66 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* @sec_status_bogus, align 8
  %69 = icmp eq i64 %67, %68
  br i1 %69, label %70, label %71

70:                                               ; preds = %64
  store i32 0, i32* %6, align 4
  br label %136

71:                                               ; preds = %64, %58, %55
  store i32 1, i32* %6, align 4
  br label %136

72:                                               ; preds = %47
  %73 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %13, align 8
  %74 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %73, i32 0, i32 2
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* %9, align 8
  %77 = icmp slt i64 %75, %76
  br i1 %77, label %78, label %79

78:                                               ; preds = %72
  store i32 1, i32* %6, align 4
  br label %136

79:                                               ; preds = %72
  %80 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %12, align 8
  %81 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %80, i32 0, i32 1
  %82 = load i64, i64* %81, align 8
  %83 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %13, align 8
  %84 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %83, i32 0, i32 1
  %85 = load i64, i64* %84, align 8
  %86 = icmp eq i64 %82, %85
  br i1 %86, label %87, label %135

87:                                               ; preds = %79
  %88 = load i32, i32* %10, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %135, label %90

90:                                               ; preds = %87
  %91 = load i32, i32* %11, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %134

93:                                               ; preds = %90
  %94 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %13, align 8
  %95 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %94, i32 0, i32 2
  %96 = load i64, i64* %95, align 8
  %97 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %12, align 8
  %98 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %97, i32 0, i32 2
  store i64 %96, i64* %98, align 8
  store i64 0, i64* %14, align 8
  br label %99

99:                                               ; preds = %130, %93
  %100 = load i64, i64* %14, align 8
  %101 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %12, align 8
  %102 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %101, i32 0, i32 3
  %103 = load i64, i64* %102, align 8
  %104 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %12, align 8
  %105 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %104, i32 0, i32 4
  %106 = load i64, i64* %105, align 8
  %107 = add i64 %103, %106
  %108 = icmp ult i64 %100, %107
  br i1 %108, label %109, label %133

109:                                              ; preds = %99
  %110 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %12, align 8
  %111 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %110, i32 0, i32 5
  %112 = load i64*, i64** %111, align 8
  %113 = load i64, i64* %14, align 8
  %114 = getelementptr inbounds i64, i64* %112, i64 %113
  %115 = load i64, i64* %114, align 8
  %116 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %12, align 8
  %117 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %116, i32 0, i32 2
  %118 = load i64, i64* %117, align 8
  %119 = icmp sgt i64 %115, %118
  br i1 %119, label %120, label %129

120:                                              ; preds = %109
  %121 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %12, align 8
  %122 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %121, i32 0, i32 2
  %123 = load i64, i64* %122, align 8
  %124 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %12, align 8
  %125 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %124, i32 0, i32 5
  %126 = load i64*, i64** %125, align 8
  %127 = load i64, i64* %14, align 8
  %128 = getelementptr inbounds i64, i64* %126, i64 %127
  store i64 %123, i64* %128, align 8
  br label %129

129:                                              ; preds = %120, %109
  br label %130

130:                                              ; preds = %129
  %131 = load i64, i64* %14, align 8
  %132 = add i64 %131, 1
  store i64 %132, i64* %14, align 8
  br label %99

133:                                              ; preds = %99
  br label %134

134:                                              ; preds = %133, %90
  store i32 1, i32* %6, align 4
  br label %136

135:                                              ; preds = %87, %79
  store i32 0, i32* %6, align 4
  br label %136

136:                                              ; preds = %135, %134, %78, %71, %70, %46, %30
  %137 = load i32, i32* %6, align 4
  ret i32 %137
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
