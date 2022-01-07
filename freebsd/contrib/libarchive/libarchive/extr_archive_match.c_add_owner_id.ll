; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_match.c_add_owner_id.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_match.c_add_owner_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive_match = type { i32 }
%struct.id_array = type { i32, i32, i64* }

@ID_IS_SET = common dso_local global i32 0, align 4
@ARCHIVE_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.archive_match*, %struct.id_array*, i64)* @add_owner_id to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @add_owner_id(%struct.archive_match* %0, %struct.id_array* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.archive_match*, align 8
  %6 = alloca %struct.id_array*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  store %struct.archive_match* %0, %struct.archive_match** %5, align 8
  store %struct.id_array* %1, %struct.id_array** %6, align 8
  store i64 %2, i64* %7, align 8
  %10 = load %struct.id_array*, %struct.id_array** %6, align 8
  %11 = getelementptr inbounds %struct.id_array, %struct.id_array* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = add nsw i32 %12, 1
  %14 = load %struct.id_array*, %struct.id_array** %6, align 8
  %15 = getelementptr inbounds %struct.id_array, %struct.id_array* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = icmp sge i32 %13, %16
  br i1 %17, label %18, label %52

18:                                               ; preds = %3
  %19 = load %struct.id_array*, %struct.id_array** %6, align 8
  %20 = getelementptr inbounds %struct.id_array, %struct.id_array* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %18
  %24 = load %struct.id_array*, %struct.id_array** %6, align 8
  %25 = getelementptr inbounds %struct.id_array, %struct.id_array* %24, i32 0, i32 1
  store i32 8, i32* %25, align 4
  br label %31

26:                                               ; preds = %18
  %27 = load %struct.id_array*, %struct.id_array** %6, align 8
  %28 = getelementptr inbounds %struct.id_array, %struct.id_array* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = mul nsw i32 %29, 2
  store i32 %30, i32* %28, align 4
  br label %31

31:                                               ; preds = %26, %23
  %32 = load %struct.id_array*, %struct.id_array** %6, align 8
  %33 = getelementptr inbounds %struct.id_array, %struct.id_array* %32, i32 0, i32 2
  %34 = load i64*, i64** %33, align 8
  %35 = load %struct.id_array*, %struct.id_array** %6, align 8
  %36 = getelementptr inbounds %struct.id_array, %struct.id_array* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = sext i32 %37 to i64
  %39 = mul i64 8, %38
  %40 = trunc i64 %39 to i32
  %41 = call i8* @realloc(i64* %34, i32 %40)
  store i8* %41, i8** %9, align 8
  %42 = load i8*, i8** %9, align 8
  %43 = icmp eq i8* %42, null
  br i1 %43, label %44, label %47

44:                                               ; preds = %31
  %45 = load %struct.archive_match*, %struct.archive_match** %5, align 8
  %46 = call i32 @error_nomem(%struct.archive_match* %45)
  store i32 %46, i32* %4, align 4
  br label %143

47:                                               ; preds = %31
  %48 = load i8*, i8** %9, align 8
  %49 = bitcast i8* %48 to i64*
  %50 = load %struct.id_array*, %struct.id_array** %6, align 8
  %51 = getelementptr inbounds %struct.id_array, %struct.id_array* %50, i32 0, i32 2
  store i64* %49, i64** %51, align 8
  br label %52

52:                                               ; preds = %47, %3
  store i32 0, i32* %8, align 4
  br label %53

53:                                               ; preds = %71, %52
  %54 = load i32, i32* %8, align 4
  %55 = load %struct.id_array*, %struct.id_array** %6, align 8
  %56 = getelementptr inbounds %struct.id_array, %struct.id_array* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = icmp ult i32 %54, %57
  br i1 %58, label %59, label %74

59:                                               ; preds = %53
  %60 = load %struct.id_array*, %struct.id_array** %6, align 8
  %61 = getelementptr inbounds %struct.id_array, %struct.id_array* %60, i32 0, i32 2
  %62 = load i64*, i64** %61, align 8
  %63 = load i32, i32* %8, align 4
  %64 = zext i32 %63 to i64
  %65 = getelementptr inbounds i64, i64* %62, i64 %64
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* %7, align 8
  %68 = icmp sge i64 %66, %67
  br i1 %68, label %69, label %70

69:                                               ; preds = %59
  br label %74

70:                                               ; preds = %59
  br label %71

71:                                               ; preds = %70
  %72 = load i32, i32* %8, align 4
  %73 = add i32 %72, 1
  store i32 %73, i32* %8, align 4
  br label %53

74:                                               ; preds = %69, %53
  %75 = load i32, i32* %8, align 4
  %76 = load %struct.id_array*, %struct.id_array** %6, align 8
  %77 = getelementptr inbounds %struct.id_array, %struct.id_array* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = icmp eq i32 %75, %78
  br i1 %79, label %80, label %91

80:                                               ; preds = %74
  %81 = load i64, i64* %7, align 8
  %82 = load %struct.id_array*, %struct.id_array** %6, align 8
  %83 = getelementptr inbounds %struct.id_array, %struct.id_array* %82, i32 0, i32 2
  %84 = load i64*, i64** %83, align 8
  %85 = load %struct.id_array*, %struct.id_array** %6, align 8
  %86 = getelementptr inbounds %struct.id_array, %struct.id_array* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %86, align 8
  %89 = sext i32 %87 to i64
  %90 = getelementptr inbounds i64, i64* %84, i64 %89
  store i64 %81, i64* %90, align 8
  br label %136

91:                                               ; preds = %74
  %92 = load %struct.id_array*, %struct.id_array** %6, align 8
  %93 = getelementptr inbounds %struct.id_array, %struct.id_array* %92, i32 0, i32 2
  %94 = load i64*, i64** %93, align 8
  %95 = load i32, i32* %8, align 4
  %96 = zext i32 %95 to i64
  %97 = getelementptr inbounds i64, i64* %94, i64 %96
  %98 = load i64, i64* %97, align 8
  %99 = load i64, i64* %7, align 8
  %100 = icmp ne i64 %98, %99
  br i1 %100, label %101, label %135

101:                                              ; preds = %91
  %102 = load %struct.id_array*, %struct.id_array** %6, align 8
  %103 = getelementptr inbounds %struct.id_array, %struct.id_array* %102, i32 0, i32 2
  %104 = load i64*, i64** %103, align 8
  %105 = load i32, i32* %8, align 4
  %106 = add i32 %105, 1
  %107 = zext i32 %106 to i64
  %108 = getelementptr inbounds i64, i64* %104, i64 %107
  %109 = load %struct.id_array*, %struct.id_array** %6, align 8
  %110 = getelementptr inbounds %struct.id_array, %struct.id_array* %109, i32 0, i32 2
  %111 = load i64*, i64** %110, align 8
  %112 = load i32, i32* %8, align 4
  %113 = zext i32 %112 to i64
  %114 = getelementptr inbounds i64, i64* %111, i64 %113
  %115 = load %struct.id_array*, %struct.id_array** %6, align 8
  %116 = getelementptr inbounds %struct.id_array, %struct.id_array* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = load i32, i32* %8, align 4
  %119 = sub i32 %117, %118
  %120 = zext i32 %119 to i64
  %121 = mul i64 %120, 8
  %122 = trunc i64 %121 to i32
  %123 = call i32 @memmove(i64* %108, i64* %114, i32 %122)
  %124 = load i64, i64* %7, align 8
  %125 = load %struct.id_array*, %struct.id_array** %6, align 8
  %126 = getelementptr inbounds %struct.id_array, %struct.id_array* %125, i32 0, i32 2
  %127 = load i64*, i64** %126, align 8
  %128 = load i32, i32* %8, align 4
  %129 = zext i32 %128 to i64
  %130 = getelementptr inbounds i64, i64* %127, i64 %129
  store i64 %124, i64* %130, align 8
  %131 = load %struct.id_array*, %struct.id_array** %6, align 8
  %132 = getelementptr inbounds %struct.id_array, %struct.id_array* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = add nsw i32 %133, 1
  store i32 %134, i32* %132, align 8
  br label %135

135:                                              ; preds = %101, %91
  br label %136

136:                                              ; preds = %135, %80
  %137 = load i32, i32* @ID_IS_SET, align 4
  %138 = load %struct.archive_match*, %struct.archive_match** %5, align 8
  %139 = getelementptr inbounds %struct.archive_match, %struct.archive_match* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 4
  %141 = or i32 %140, %137
  store i32 %141, i32* %139, align 4
  %142 = load i32, i32* @ARCHIVE_OK, align 4
  store i32 %142, i32* %4, align 4
  br label %143

143:                                              ; preds = %136, %44
  %144 = load i32, i32* %4, align 4
  ret i32 %144
}

declare dso_local i8* @realloc(i64*, i32) #1

declare dso_local i32 @error_nomem(%struct.archive_match*) #1

declare dso_local i32 @memmove(i64*, i64*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
