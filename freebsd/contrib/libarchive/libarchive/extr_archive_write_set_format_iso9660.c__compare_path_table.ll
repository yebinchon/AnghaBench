; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_write_set_format_iso9660.c__compare_path_table.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_write_set_format_iso9660.c__compare_path_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.isoent = type { i8*, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*)* @_compare_path_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_compare_path_table(i8* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.isoent*, align 8
  %7 = alloca %struct.isoent*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %12 = load i8*, i8** %4, align 8
  %13 = ptrtoint i8* %12 to i64
  %14 = inttoptr i64 %13 to %struct.isoent**
  %15 = load %struct.isoent*, %struct.isoent** %14, align 8
  store %struct.isoent* %15, %struct.isoent** %6, align 8
  %16 = load i8*, i8** %5, align 8
  %17 = ptrtoint i8* %16 to i64
  %18 = inttoptr i64 %17 to %struct.isoent**
  %19 = load %struct.isoent*, %struct.isoent** %18, align 8
  store %struct.isoent* %19, %struct.isoent** %7, align 8
  %20 = load %struct.isoent*, %struct.isoent** %6, align 8
  %21 = getelementptr inbounds %struct.isoent, %struct.isoent* %20, i32 0, i32 2
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.isoent*, %struct.isoent** %7, align 8
  %26 = getelementptr inbounds %struct.isoent, %struct.isoent* %25, i32 0, i32 2
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = sub nsw i32 %24, %29
  store i32 %30, i32* %10, align 4
  %31 = load i32, i32* %10, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %2
  %34 = load i32, i32* %10, align 4
  store i32 %34, i32* %3, align 4
  br label %141

35:                                               ; preds = %2
  %36 = load %struct.isoent*, %struct.isoent** %6, align 8
  %37 = getelementptr inbounds %struct.isoent, %struct.isoent* %36, i32 0, i32 0
  %38 = load i8*, i8** %37, align 8
  store i8* %38, i8** %8, align 8
  %39 = load %struct.isoent*, %struct.isoent** %7, align 8
  %40 = getelementptr inbounds %struct.isoent, %struct.isoent* %39, i32 0, i32 0
  %41 = load i8*, i8** %40, align 8
  store i8* %41, i8** %9, align 8
  %42 = load %struct.isoent*, %struct.isoent** %6, align 8
  %43 = getelementptr inbounds %struct.isoent, %struct.isoent* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  store i32 %44, i32* %11, align 4
  %45 = load i32, i32* %11, align 4
  %46 = load %struct.isoent*, %struct.isoent** %7, align 8
  %47 = getelementptr inbounds %struct.isoent, %struct.isoent* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = icmp sgt i32 %45, %48
  br i1 %49, label %50, label %54

50:                                               ; preds = %35
  %51 = load %struct.isoent*, %struct.isoent** %7, align 8
  %52 = getelementptr inbounds %struct.isoent, %struct.isoent* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  store i32 %53, i32* %11, align 4
  br label %54

54:                                               ; preds = %50, %35
  %55 = load i8*, i8** %8, align 8
  %56 = load i8*, i8** %9, align 8
  %57 = load i32, i32* %11, align 4
  %58 = call i32 @strncmp(i8* %55, i8* %56, i32 %57)
  store i32 %58, i32* %10, align 4
  %59 = load i32, i32* %10, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %54
  %62 = load i32, i32* %10, align 4
  store i32 %62, i32* %3, align 4
  br label %141

63:                                               ; preds = %54
  %64 = load %struct.isoent*, %struct.isoent** %6, align 8
  %65 = getelementptr inbounds %struct.isoent, %struct.isoent* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 8
  %67 = load %struct.isoent*, %struct.isoent** %7, align 8
  %68 = getelementptr inbounds %struct.isoent, %struct.isoent* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 8
  %70 = icmp slt i32 %66, %69
  br i1 %70, label %71, label %101

71:                                               ; preds = %63
  %72 = load i32, i32* %11, align 4
  %73 = load i8*, i8** %9, align 8
  %74 = sext i32 %72 to i64
  %75 = getelementptr inbounds i8, i8* %73, i64 %74
  store i8* %75, i8** %9, align 8
  %76 = load %struct.isoent*, %struct.isoent** %7, align 8
  %77 = getelementptr inbounds %struct.isoent, %struct.isoent* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 8
  %79 = load %struct.isoent*, %struct.isoent** %6, align 8
  %80 = getelementptr inbounds %struct.isoent, %struct.isoent* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 8
  %82 = sub nsw i32 %78, %81
  store i32 %82, i32* %11, align 4
  br label %83

83:                                               ; preds = %99, %71
  %84 = load i32, i32* %11, align 4
  %85 = add nsw i32 %84, -1
  store i32 %85, i32* %11, align 4
  %86 = icmp ne i32 %84, 0
  br i1 %86, label %87, label %100

87:                                               ; preds = %83
  %88 = load i8*, i8** %9, align 8
  %89 = getelementptr inbounds i8, i8* %88, i32 1
  store i8* %89, i8** %9, align 8
  %90 = load i8, i8* %88, align 1
  %91 = sext i8 %90 to i32
  %92 = icmp ne i32 32, %91
  br i1 %92, label %93, label %99

93:                                               ; preds = %87
  %94 = load i8*, i8** %9, align 8
  %95 = getelementptr inbounds i8, i8* %94, i64 -1
  %96 = load i8, i8* %95, align 1
  %97 = zext i8 %96 to i32
  %98 = sub nsw i32 32, %97
  store i32 %98, i32* %3, align 4
  br label %141

99:                                               ; preds = %87
  br label %83

100:                                              ; preds = %83
  br label %140

101:                                              ; preds = %63
  %102 = load %struct.isoent*, %struct.isoent** %6, align 8
  %103 = getelementptr inbounds %struct.isoent, %struct.isoent* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 8
  %105 = load %struct.isoent*, %struct.isoent** %7, align 8
  %106 = getelementptr inbounds %struct.isoent, %struct.isoent* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 8
  %108 = icmp sgt i32 %104, %107
  br i1 %108, label %109, label %139

109:                                              ; preds = %101
  %110 = load i32, i32* %11, align 4
  %111 = load i8*, i8** %8, align 8
  %112 = sext i32 %110 to i64
  %113 = getelementptr inbounds i8, i8* %111, i64 %112
  store i8* %113, i8** %8, align 8
  %114 = load %struct.isoent*, %struct.isoent** %6, align 8
  %115 = getelementptr inbounds %struct.isoent, %struct.isoent* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 8
  %117 = load %struct.isoent*, %struct.isoent** %7, align 8
  %118 = getelementptr inbounds %struct.isoent, %struct.isoent* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 8
  %120 = sub nsw i32 %116, %119
  store i32 %120, i32* %11, align 4
  br label %121

121:                                              ; preds = %137, %109
  %122 = load i32, i32* %11, align 4
  %123 = add nsw i32 %122, -1
  store i32 %123, i32* %11, align 4
  %124 = icmp ne i32 %122, 0
  br i1 %124, label %125, label %138

125:                                              ; preds = %121
  %126 = load i8*, i8** %8, align 8
  %127 = getelementptr inbounds i8, i8* %126, i32 1
  store i8* %127, i8** %8, align 8
  %128 = load i8, i8* %126, align 1
  %129 = sext i8 %128 to i32
  %130 = icmp ne i32 32, %129
  br i1 %130, label %131, label %137

131:                                              ; preds = %125
  %132 = load i8*, i8** %8, align 8
  %133 = getelementptr inbounds i8, i8* %132, i64 -1
  %134 = load i8, i8* %133, align 1
  %135 = zext i8 %134 to i32
  %136 = sub nsw i32 %135, 32
  store i32 %136, i32* %3, align 4
  br label %141

137:                                              ; preds = %125
  br label %121

138:                                              ; preds = %121
  br label %139

139:                                              ; preds = %138, %101
  br label %140

140:                                              ; preds = %139, %100
  store i32 0, i32* %3, align 4
  br label %141

141:                                              ; preds = %140, %131, %93, %61, %33
  %142 = load i32, i32* %3, align 4
  ret i32 %142
}

declare dso_local i32 @strncmp(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
