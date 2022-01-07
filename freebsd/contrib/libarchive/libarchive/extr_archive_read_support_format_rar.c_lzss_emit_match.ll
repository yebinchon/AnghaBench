; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_rar.c_lzss_emit_match.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_rar.c_lzss_emit_match.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rar = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i8*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rar*, i32, i32)* @lzss_emit_match to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lzss_emit_match(%struct.rar* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.rar*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  store %struct.rar* %0, %struct.rar** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %14 = load %struct.rar*, %struct.rar** %4, align 8
  %15 = getelementptr inbounds %struct.rar, %struct.rar* %14, i32 0, i32 0
  %16 = call i32 @lzss_current_offset(%struct.TYPE_4__* %15)
  store i32 %16, i32* %7, align 4
  %17 = load i32, i32* %7, align 4
  %18 = load i32, i32* %5, align 4
  %19 = sub nsw i32 %17, %18
  %20 = load %struct.rar*, %struct.rar** %4, align 8
  %21 = getelementptr inbounds %struct.rar, %struct.rar* %20, i32 0, i32 0
  %22 = call i32 @lzss_mask(%struct.TYPE_4__* %21)
  %23 = and i32 %19, %22
  store i32 %23, i32* %8, align 4
  %24 = load i32, i32* %6, align 4
  store i32 %24, i32* %11, align 4
  br label %25

25:                                               ; preds = %113, %3
  %26 = load i32, i32* %11, align 4
  %27 = icmp sgt i32 %26, 0
  br i1 %27, label %28, label %131

28:                                               ; preds = %25
  %29 = load i32, i32* %11, align 4
  store i32 %29, i32* %9, align 4
  %30 = load i32, i32* %7, align 4
  %31 = load i32, i32* %8, align 4
  %32 = icmp sgt i32 %30, %31
  br i1 %32, label %33, label %48

33:                                               ; preds = %28
  %34 = load i32, i32* %9, align 4
  %35 = load %struct.rar*, %struct.rar** %4, align 8
  %36 = getelementptr inbounds %struct.rar, %struct.rar* %35, i32 0, i32 0
  %37 = call i32 @lzss_size(%struct.TYPE_4__* %36)
  %38 = load i32, i32* %7, align 4
  %39 = sub nsw i32 %37, %38
  %40 = icmp sgt i32 %34, %39
  br i1 %40, label %41, label %47

41:                                               ; preds = %33
  %42 = load %struct.rar*, %struct.rar** %4, align 8
  %43 = getelementptr inbounds %struct.rar, %struct.rar* %42, i32 0, i32 0
  %44 = call i32 @lzss_size(%struct.TYPE_4__* %43)
  %45 = load i32, i32* %7, align 4
  %46 = sub nsw i32 %44, %45
  store i32 %46, i32* %9, align 4
  br label %47

47:                                               ; preds = %41, %33
  br label %63

48:                                               ; preds = %28
  %49 = load i32, i32* %9, align 4
  %50 = load %struct.rar*, %struct.rar** %4, align 8
  %51 = getelementptr inbounds %struct.rar, %struct.rar* %50, i32 0, i32 0
  %52 = call i32 @lzss_size(%struct.TYPE_4__* %51)
  %53 = load i32, i32* %8, align 4
  %54 = sub nsw i32 %52, %53
  %55 = icmp sgt i32 %49, %54
  br i1 %55, label %56, label %62

56:                                               ; preds = %48
  %57 = load %struct.rar*, %struct.rar** %4, align 8
  %58 = getelementptr inbounds %struct.rar, %struct.rar* %57, i32 0, i32 0
  %59 = call i32 @lzss_size(%struct.TYPE_4__* %58)
  %60 = load i32, i32* %8, align 4
  %61 = sub nsw i32 %59, %60
  store i32 %61, i32* %9, align 4
  br label %62

62:                                               ; preds = %56, %48
  br label %63

63:                                               ; preds = %62, %47
  %64 = load %struct.rar*, %struct.rar** %4, align 8
  %65 = getelementptr inbounds %struct.rar, %struct.rar* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 0
  %67 = load i8*, i8** %66, align 8
  %68 = load i32, i32* %7, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i8, i8* %67, i64 %69
  store i8* %70, i8** %12, align 8
  %71 = load %struct.rar*, %struct.rar** %4, align 8
  %72 = getelementptr inbounds %struct.rar, %struct.rar* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 0
  %74 = load i8*, i8** %73, align 8
  %75 = load i32, i32* %8, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i8, i8* %74, i64 %76
  store i8* %77, i8** %13, align 8
  %78 = load i32, i32* %7, align 4
  %79 = load i32, i32* %9, align 4
  %80 = add nsw i32 %78, %79
  %81 = load i32, i32* %8, align 4
  %82 = icmp slt i32 %80, %81
  br i1 %82, label %89, label %83

83:                                               ; preds = %63
  %84 = load i32, i32* %8, align 4
  %85 = load i32, i32* %9, align 4
  %86 = add nsw i32 %84, %85
  %87 = load i32, i32* %7, align 4
  %88 = icmp slt i32 %86, %87
  br i1 %88, label %89, label %94

89:                                               ; preds = %83, %63
  %90 = load i8*, i8** %12, align 8
  %91 = load i8*, i8** %13, align 8
  %92 = load i32, i32* %9, align 4
  %93 = call i32 @memcpy(i8* %90, i8* %91, i32 %92)
  br label %113

94:                                               ; preds = %83
  store i32 0, i32* %10, align 4
  br label %95

95:                                               ; preds = %109, %94
  %96 = load i32, i32* %10, align 4
  %97 = load i32, i32* %9, align 4
  %98 = icmp slt i32 %96, %97
  br i1 %98, label %99, label %112

99:                                               ; preds = %95
  %100 = load i8*, i8** %13, align 8
  %101 = load i32, i32* %10, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i8, i8* %100, i64 %102
  %104 = load i8, i8* %103, align 1
  %105 = load i8*, i8** %12, align 8
  %106 = load i32, i32* %10, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i8, i8* %105, i64 %107
  store i8 %104, i8* %108, align 1
  br label %109

109:                                              ; preds = %99
  %110 = load i32, i32* %10, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %10, align 4
  br label %95

112:                                              ; preds = %95
  br label %113

113:                                              ; preds = %112, %89
  %114 = load i32, i32* %9, align 4
  %115 = load i32, i32* %11, align 4
  %116 = sub nsw i32 %115, %114
  store i32 %116, i32* %11, align 4
  %117 = load i32, i32* %7, align 4
  %118 = load i32, i32* %9, align 4
  %119 = add nsw i32 %117, %118
  %120 = load %struct.rar*, %struct.rar** %4, align 8
  %121 = getelementptr inbounds %struct.rar, %struct.rar* %120, i32 0, i32 0
  %122 = call i32 @lzss_mask(%struct.TYPE_4__* %121)
  %123 = and i32 %119, %122
  store i32 %123, i32* %7, align 4
  %124 = load i32, i32* %8, align 4
  %125 = load i32, i32* %9, align 4
  %126 = add nsw i32 %124, %125
  %127 = load %struct.rar*, %struct.rar** %4, align 8
  %128 = getelementptr inbounds %struct.rar, %struct.rar* %127, i32 0, i32 0
  %129 = call i32 @lzss_mask(%struct.TYPE_4__* %128)
  %130 = and i32 %126, %129
  store i32 %130, i32* %8, align 4
  br label %25

131:                                              ; preds = %25
  %132 = load i32, i32* %6, align 4
  %133 = load %struct.rar*, %struct.rar** %4, align 8
  %134 = getelementptr inbounds %struct.rar, %struct.rar* %133, i32 0, i32 0
  %135 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 8
  %137 = add nsw i32 %136, %132
  store i32 %137, i32* %135, align 8
  ret void
}

declare dso_local i32 @lzss_current_offset(%struct.TYPE_4__*) #1

declare dso_local i32 @lzss_mask(%struct.TYPE_4__*) #1

declare dso_local i32 @lzss_size(%struct.TYPE_4__*) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
