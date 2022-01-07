; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_write_set_format_pax.c_archive_write_pax_data.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_write_set_format_pax.c_archive_write_pax_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive_write = type { i64 }
%struct.pax = type { %struct.sparse_block*, %struct.TYPE_3__, i32 }
%struct.sparse_block = type { i64, i64, %struct.sparse_block* }
%struct.TYPE_3__ = type { i8* }

@ARCHIVE_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.archive_write*, i8*, i64)* @archive_write_pax_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @archive_write_pax_data(%struct.archive_write* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.archive_write*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.pax*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca %struct.sparse_block*, align 8
  store %struct.archive_write* %0, %struct.archive_write** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %14 = load %struct.archive_write*, %struct.archive_write** %5, align 8
  %15 = getelementptr inbounds %struct.archive_write, %struct.archive_write* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = inttoptr i64 %16 to %struct.pax*
  store %struct.pax* %17, %struct.pax** %8, align 8
  %18 = load %struct.pax*, %struct.pax** %8, align 8
  %19 = getelementptr inbounds %struct.pax, %struct.pax* %18, i32 0, i32 1
  %20 = call i64 @archive_strlen(%struct.TYPE_3__* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %52

22:                                               ; preds = %3
  %23 = load %struct.archive_write*, %struct.archive_write** %5, align 8
  %24 = load %struct.pax*, %struct.pax** %8, align 8
  %25 = getelementptr inbounds %struct.pax, %struct.pax* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i8*, i8** %26, align 8
  %28 = load %struct.pax*, %struct.pax** %8, align 8
  %29 = getelementptr inbounds %struct.pax, %struct.pax* %28, i32 0, i32 1
  %30 = call i64 @archive_strlen(%struct.TYPE_3__* %29)
  %31 = call i32 @__archive_write_output(%struct.archive_write* %23, i8* %27, i64 %30)
  store i32 %31, i32* %11, align 4
  %32 = load i32, i32* %11, align 4
  %33 = load i32, i32* @ARCHIVE_OK, align 4
  %34 = icmp ne i32 %32, %33
  br i1 %34, label %35, label %37

35:                                               ; preds = %22
  %36 = load i32, i32* %11, align 4
  store i32 %36, i32* %4, align 4
  br label %155

37:                                               ; preds = %22
  %38 = load %struct.archive_write*, %struct.archive_write** %5, align 8
  %39 = load %struct.pax*, %struct.pax** %8, align 8
  %40 = getelementptr inbounds %struct.pax, %struct.pax* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @__archive_write_nulls(%struct.archive_write* %38, i32 %41)
  store i32 %42, i32* %11, align 4
  %43 = load i32, i32* %11, align 4
  %44 = load i32, i32* @ARCHIVE_OK, align 4
  %45 = icmp ne i32 %43, %44
  br i1 %45, label %46, label %48

46:                                               ; preds = %37
  %47 = load i32, i32* %11, align 4
  store i32 %47, i32* %4, align 4
  br label %155

48:                                               ; preds = %37
  %49 = load %struct.pax*, %struct.pax** %8, align 8
  %50 = getelementptr inbounds %struct.pax, %struct.pax* %49, i32 0, i32 1
  %51 = call i32 @archive_string_empty(%struct.TYPE_3__* %50)
  br label %52

52:                                               ; preds = %48, %3
  store i64 0, i64* %10, align 8
  br label %53

53:                                               ; preds = %151, %120, %52
  %54 = load i64, i64* %10, align 8
  %55 = load i64, i64* %7, align 8
  %56 = icmp ult i64 %54, %55
  br i1 %56, label %57, label %152

57:                                               ; preds = %53
  br label %58

58:                                               ; preds = %72, %57
  %59 = load %struct.pax*, %struct.pax** %8, align 8
  %60 = getelementptr inbounds %struct.pax, %struct.pax* %59, i32 0, i32 0
  %61 = load %struct.sparse_block*, %struct.sparse_block** %60, align 8
  %62 = icmp ne %struct.sparse_block* %61, null
  br i1 %62, label %63, label %70

63:                                               ; preds = %58
  %64 = load %struct.pax*, %struct.pax** %8, align 8
  %65 = getelementptr inbounds %struct.pax, %struct.pax* %64, i32 0, i32 0
  %66 = load %struct.sparse_block*, %struct.sparse_block** %65, align 8
  %67 = getelementptr inbounds %struct.sparse_block, %struct.sparse_block* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = icmp eq i64 %68, 0
  br label %70

70:                                               ; preds = %63, %58
  %71 = phi i1 [ false, %58 ], [ %69, %63 ]
  br i1 %71, label %72, label %85

72:                                               ; preds = %70
  %73 = load %struct.pax*, %struct.pax** %8, align 8
  %74 = getelementptr inbounds %struct.pax, %struct.pax* %73, i32 0, i32 0
  %75 = load %struct.sparse_block*, %struct.sparse_block** %74, align 8
  %76 = getelementptr inbounds %struct.sparse_block, %struct.sparse_block* %75, i32 0, i32 2
  %77 = load %struct.sparse_block*, %struct.sparse_block** %76, align 8
  store %struct.sparse_block* %77, %struct.sparse_block** %13, align 8
  %78 = load %struct.pax*, %struct.pax** %8, align 8
  %79 = getelementptr inbounds %struct.pax, %struct.pax* %78, i32 0, i32 0
  %80 = load %struct.sparse_block*, %struct.sparse_block** %79, align 8
  %81 = call i32 @free(%struct.sparse_block* %80)
  %82 = load %struct.sparse_block*, %struct.sparse_block** %13, align 8
  %83 = load %struct.pax*, %struct.pax** %8, align 8
  %84 = getelementptr inbounds %struct.pax, %struct.pax* %83, i32 0, i32 0
  store %struct.sparse_block* %82, %struct.sparse_block** %84, align 8
  br label %58

85:                                               ; preds = %70
  %86 = load %struct.pax*, %struct.pax** %8, align 8
  %87 = getelementptr inbounds %struct.pax, %struct.pax* %86, i32 0, i32 0
  %88 = load %struct.sparse_block*, %struct.sparse_block** %87, align 8
  %89 = icmp eq %struct.sparse_block* %88, null
  br i1 %89, label %90, label %93

90:                                               ; preds = %85
  %91 = load i64, i64* %10, align 8
  %92 = trunc i64 %91 to i32
  store i32 %92, i32* %4, align 4
  br label %155

93:                                               ; preds = %85
  %94 = load i8*, i8** %6, align 8
  %95 = load i64, i64* %10, align 8
  %96 = getelementptr inbounds i8, i8* %94, i64 %95
  store i8* %96, i8** %12, align 8
  %97 = load i64, i64* %7, align 8
  %98 = load i64, i64* %10, align 8
  %99 = sub i64 %97, %98
  store i64 %99, i64* %9, align 8
  %100 = load i64, i64* %9, align 8
  %101 = load %struct.pax*, %struct.pax** %8, align 8
  %102 = getelementptr inbounds %struct.pax, %struct.pax* %101, i32 0, i32 0
  %103 = load %struct.sparse_block*, %struct.sparse_block** %102, align 8
  %104 = getelementptr inbounds %struct.sparse_block, %struct.sparse_block* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = icmp ugt i64 %100, %105
  br i1 %106, label %107, label %113

107:                                              ; preds = %93
  %108 = load %struct.pax*, %struct.pax** %8, align 8
  %109 = getelementptr inbounds %struct.pax, %struct.pax* %108, i32 0, i32 0
  %110 = load %struct.sparse_block*, %struct.sparse_block** %109, align 8
  %111 = getelementptr inbounds %struct.sparse_block, %struct.sparse_block* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  store i64 %112, i64* %9, align 8
  br label %113

113:                                              ; preds = %107, %93
  %114 = load %struct.pax*, %struct.pax** %8, align 8
  %115 = getelementptr inbounds %struct.pax, %struct.pax* %114, i32 0, i32 0
  %116 = load %struct.sparse_block*, %struct.sparse_block** %115, align 8
  %117 = getelementptr inbounds %struct.sparse_block, %struct.sparse_block* %116, i32 0, i32 1
  %118 = load i64, i64* %117, align 8
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %131

120:                                              ; preds = %113
  %121 = load i64, i64* %9, align 8
  %122 = load %struct.pax*, %struct.pax** %8, align 8
  %123 = getelementptr inbounds %struct.pax, %struct.pax* %122, i32 0, i32 0
  %124 = load %struct.sparse_block*, %struct.sparse_block** %123, align 8
  %125 = getelementptr inbounds %struct.sparse_block, %struct.sparse_block* %124, i32 0, i32 0
  %126 = load i64, i64* %125, align 8
  %127 = sub i64 %126, %121
  store i64 %127, i64* %125, align 8
  %128 = load i64, i64* %9, align 8
  %129 = load i64, i64* %10, align 8
  %130 = add i64 %129, %128
  store i64 %130, i64* %10, align 8
  br label %53

131:                                              ; preds = %113
  %132 = load %struct.archive_write*, %struct.archive_write** %5, align 8
  %133 = load i8*, i8** %12, align 8
  %134 = load i64, i64* %9, align 8
  %135 = call i32 @__archive_write_output(%struct.archive_write* %132, i8* %133, i64 %134)
  store i32 %135, i32* %11, align 4
  %136 = load i64, i64* %9, align 8
  %137 = load %struct.pax*, %struct.pax** %8, align 8
  %138 = getelementptr inbounds %struct.pax, %struct.pax* %137, i32 0, i32 0
  %139 = load %struct.sparse_block*, %struct.sparse_block** %138, align 8
  %140 = getelementptr inbounds %struct.sparse_block, %struct.sparse_block* %139, i32 0, i32 0
  %141 = load i64, i64* %140, align 8
  %142 = sub i64 %141, %136
  store i64 %142, i64* %140, align 8
  %143 = load i64, i64* %9, align 8
  %144 = load i64, i64* %10, align 8
  %145 = add i64 %144, %143
  store i64 %145, i64* %10, align 8
  %146 = load i32, i32* %11, align 4
  %147 = load i32, i32* @ARCHIVE_OK, align 4
  %148 = icmp ne i32 %146, %147
  br i1 %148, label %149, label %151

149:                                              ; preds = %131
  %150 = load i32, i32* %11, align 4
  store i32 %150, i32* %4, align 4
  br label %155

151:                                              ; preds = %131
  br label %53

152:                                              ; preds = %53
  %153 = load i64, i64* %10, align 8
  %154 = trunc i64 %153 to i32
  store i32 %154, i32* %4, align 4
  br label %155

155:                                              ; preds = %152, %149, %90, %46, %35
  %156 = load i32, i32* %4, align 4
  ret i32 %156
}

declare dso_local i64 @archive_strlen(%struct.TYPE_3__*) #1

declare dso_local i32 @__archive_write_output(%struct.archive_write*, i8*, i64) #1

declare dso_local i32 @__archive_write_nulls(%struct.archive_write*, i32) #1

declare dso_local i32 @archive_string_empty(%struct.TYPE_3__*) #1

declare dso_local i32 @free(%struct.sparse_block*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
