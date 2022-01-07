; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_write_add_filter_compress.c_output_code.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_write_add_filter_compress.c_output_code.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive_write_filter = type { %struct.private_data* }
%struct.private_data = type { i32, i32, i32, i64, i64, i64 }

@CLEAR = common dso_local global i32 0, align 4
@rmask = common dso_local global i32* null, align 8
@ARCHIVE_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.archive_write_filter*, i32)* @output_code to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @output_code(%struct.archive_write_filter* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.archive_write_filter*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.private_data*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.archive_write_filter* %0, %struct.archive_write_filter** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load %struct.archive_write_filter*, %struct.archive_write_filter** %4, align 8
  %12 = getelementptr inbounds %struct.archive_write_filter, %struct.archive_write_filter* %11, i32 0, i32 0
  %13 = load %struct.private_data*, %struct.private_data** %12, align 8
  store %struct.private_data* %13, %struct.private_data** %6, align 8
  %14 = load i32, i32* %5, align 4
  %15 = load i32, i32* @CLEAR, align 4
  %16 = icmp eq i32 %14, %15
  %17 = zext i1 %16 to i32
  store i32 %17, i32* %9, align 4
  %18 = load %struct.private_data*, %struct.private_data** %6, align 8
  %19 = getelementptr inbounds %struct.private_data, %struct.private_data* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = srem i32 %20, 8
  store i32 %21, i32* %10, align 4
  %22 = load i32, i32* %5, align 4
  %23 = load i32, i32* %10, align 4
  %24 = shl i32 %22, %23
  %25 = and i32 %24, 255
  %26 = load %struct.private_data*, %struct.private_data** %6, align 8
  %27 = getelementptr inbounds %struct.private_data, %struct.private_data* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = or i32 %28, %25
  store i32 %29, i32* %27, align 4
  %30 = load %struct.archive_write_filter*, %struct.archive_write_filter** %4, align 8
  %31 = load %struct.private_data*, %struct.private_data** %6, align 8
  %32 = getelementptr inbounds %struct.private_data, %struct.private_data* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @output_byte(%struct.archive_write_filter* %30, i32 %33)
  %35 = load %struct.private_data*, %struct.private_data** %6, align 8
  %36 = getelementptr inbounds %struct.private_data, %struct.private_data* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* %10, align 4
  %39 = sub nsw i32 8, %38
  %40 = sub nsw i32 %37, %39
  store i32 %40, i32* %7, align 4
  %41 = load i32, i32* %10, align 4
  %42 = sub nsw i32 8, %41
  %43 = load i32, i32* %5, align 4
  %44 = ashr i32 %43, %42
  store i32 %44, i32* %5, align 4
  %45 = load i32, i32* %7, align 4
  %46 = icmp sge i32 %45, 8
  br i1 %46, label %47, label %56

47:                                               ; preds = %2
  %48 = load %struct.archive_write_filter*, %struct.archive_write_filter** %4, align 8
  %49 = load i32, i32* %5, align 4
  %50 = and i32 %49, 255
  %51 = call i32 @output_byte(%struct.archive_write_filter* %48, i32 %50)
  %52 = load i32, i32* %5, align 4
  %53 = ashr i32 %52, 8
  store i32 %53, i32* %5, align 4
  %54 = load i32, i32* %7, align 4
  %55 = sub nsw i32 %54, 8
  store i32 %55, i32* %7, align 4
  br label %56

56:                                               ; preds = %47, %2
  %57 = load %struct.private_data*, %struct.private_data** %6, align 8
  %58 = getelementptr inbounds %struct.private_data, %struct.private_data* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 8
  %60 = load %struct.private_data*, %struct.private_data** %6, align 8
  %61 = getelementptr inbounds %struct.private_data, %struct.private_data* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = add nsw i32 %62, %59
  store i32 %63, i32* %61, align 8
  %64 = load i32, i32* %5, align 4
  %65 = load i32*, i32** @rmask, align 8
  %66 = load i32, i32* %7, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i32, i32* %65, i64 %67
  %69 = load i32, i32* %68, align 4
  %70 = and i32 %64, %69
  %71 = load %struct.private_data*, %struct.private_data** %6, align 8
  %72 = getelementptr inbounds %struct.private_data, %struct.private_data* %71, i32 0, i32 1
  store i32 %70, i32* %72, align 4
  %73 = load %struct.private_data*, %struct.private_data** %6, align 8
  %74 = getelementptr inbounds %struct.private_data, %struct.private_data* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = load %struct.private_data*, %struct.private_data** %6, align 8
  %77 = getelementptr inbounds %struct.private_data, %struct.private_data* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 8
  %79 = mul nsw i32 %78, 8
  %80 = icmp eq i32 %75, %79
  br i1 %80, label %81, label %84

81:                                               ; preds = %56
  %82 = load %struct.private_data*, %struct.private_data** %6, align 8
  %83 = getelementptr inbounds %struct.private_data, %struct.private_data* %82, i32 0, i32 0
  store i32 0, i32* %83, align 8
  br label %84

84:                                               ; preds = %81, %56
  %85 = load i32, i32* %9, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %95, label %87

87:                                               ; preds = %84
  %88 = load %struct.private_data*, %struct.private_data** %6, align 8
  %89 = getelementptr inbounds %struct.private_data, %struct.private_data* %88, i32 0, i32 3
  %90 = load i64, i64* %89, align 8
  %91 = load %struct.private_data*, %struct.private_data** %6, align 8
  %92 = getelementptr inbounds %struct.private_data, %struct.private_data* %91, i32 0, i32 4
  %93 = load i64, i64* %92, align 8
  %94 = icmp sgt i64 %90, %93
  br i1 %94, label %95, label %171

95:                                               ; preds = %87, %84
  %96 = load %struct.private_data*, %struct.private_data** %6, align 8
  %97 = getelementptr inbounds %struct.private_data, %struct.private_data* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = icmp sgt i32 %98, 0
  br i1 %99, label %100, label %129

100:                                              ; preds = %95
  br label %101

101:                                              ; preds = %121, %100
  %102 = load %struct.private_data*, %struct.private_data** %6, align 8
  %103 = getelementptr inbounds %struct.private_data, %struct.private_data* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = load %struct.private_data*, %struct.private_data** %6, align 8
  %106 = getelementptr inbounds %struct.private_data, %struct.private_data* %105, i32 0, i32 2
  %107 = load i32, i32* %106, align 8
  %108 = mul nsw i32 %107, 8
  %109 = icmp slt i32 %104, %108
  br i1 %109, label %110, label %128

110:                                              ; preds = %101
  %111 = load %struct.archive_write_filter*, %struct.archive_write_filter** %4, align 8
  %112 = load %struct.private_data*, %struct.private_data** %6, align 8
  %113 = getelementptr inbounds %struct.private_data, %struct.private_data* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  %115 = call i32 @output_byte(%struct.archive_write_filter* %111, i32 %114)
  store i32 %115, i32* %8, align 4
  %116 = load i32, i32* %8, align 4
  %117 = load i32, i32* @ARCHIVE_OK, align 4
  %118 = icmp ne i32 %116, %117
  br i1 %118, label %119, label %121

119:                                              ; preds = %110
  %120 = load i32, i32* %8, align 4
  store i32 %120, i32* %3, align 4
  br label %173

121:                                              ; preds = %110
  %122 = load %struct.private_data*, %struct.private_data** %6, align 8
  %123 = getelementptr inbounds %struct.private_data, %struct.private_data* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  %125 = add nsw i32 %124, 8
  store i32 %125, i32* %123, align 8
  %126 = load %struct.private_data*, %struct.private_data** %6, align 8
  %127 = getelementptr inbounds %struct.private_data, %struct.private_data* %126, i32 0, i32 1
  store i32 0, i32* %127, align 4
  br label %101

128:                                              ; preds = %101
  br label %129

129:                                              ; preds = %128, %95
  %130 = load %struct.private_data*, %struct.private_data** %6, align 8
  %131 = getelementptr inbounds %struct.private_data, %struct.private_data* %130, i32 0, i32 1
  store i32 0, i32* %131, align 4
  %132 = load %struct.private_data*, %struct.private_data** %6, align 8
  %133 = getelementptr inbounds %struct.private_data, %struct.private_data* %132, i32 0, i32 0
  store i32 0, i32* %133, align 8
  %134 = load i32, i32* %9, align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %146

136:                                              ; preds = %129
  %137 = load %struct.private_data*, %struct.private_data** %6, align 8
  %138 = getelementptr inbounds %struct.private_data, %struct.private_data* %137, i32 0, i32 2
  store i32 9, i32* %138, align 8
  %139 = load %struct.private_data*, %struct.private_data** %6, align 8
  %140 = getelementptr inbounds %struct.private_data, %struct.private_data* %139, i32 0, i32 2
  %141 = load i32, i32* %140, align 8
  %142 = call i8* @MAXCODE(i32 %141)
  %143 = ptrtoint i8* %142 to i64
  %144 = load %struct.private_data*, %struct.private_data** %6, align 8
  %145 = getelementptr inbounds %struct.private_data, %struct.private_data* %144, i32 0, i32 4
  store i64 %143, i64* %145, align 8
  br label %170

146:                                              ; preds = %129
  %147 = load %struct.private_data*, %struct.private_data** %6, align 8
  %148 = getelementptr inbounds %struct.private_data, %struct.private_data* %147, i32 0, i32 2
  %149 = load i32, i32* %148, align 8
  %150 = add nsw i32 %149, 1
  store i32 %150, i32* %148, align 8
  %151 = load %struct.private_data*, %struct.private_data** %6, align 8
  %152 = getelementptr inbounds %struct.private_data, %struct.private_data* %151, i32 0, i32 2
  %153 = load i32, i32* %152, align 8
  %154 = icmp eq i32 %153, 16
  br i1 %154, label %155, label %161

155:                                              ; preds = %146
  %156 = load %struct.private_data*, %struct.private_data** %6, align 8
  %157 = getelementptr inbounds %struct.private_data, %struct.private_data* %156, i32 0, i32 5
  %158 = load i64, i64* %157, align 8
  %159 = load %struct.private_data*, %struct.private_data** %6, align 8
  %160 = getelementptr inbounds %struct.private_data, %struct.private_data* %159, i32 0, i32 4
  store i64 %158, i64* %160, align 8
  br label %169

161:                                              ; preds = %146
  %162 = load %struct.private_data*, %struct.private_data** %6, align 8
  %163 = getelementptr inbounds %struct.private_data, %struct.private_data* %162, i32 0, i32 2
  %164 = load i32, i32* %163, align 8
  %165 = call i8* @MAXCODE(i32 %164)
  %166 = ptrtoint i8* %165 to i64
  %167 = load %struct.private_data*, %struct.private_data** %6, align 8
  %168 = getelementptr inbounds %struct.private_data, %struct.private_data* %167, i32 0, i32 4
  store i64 %166, i64* %168, align 8
  br label %169

169:                                              ; preds = %161, %155
  br label %170

170:                                              ; preds = %169, %136
  br label %171

171:                                              ; preds = %170, %87
  %172 = load i32, i32* @ARCHIVE_OK, align 4
  store i32 %172, i32* %3, align 4
  br label %173

173:                                              ; preds = %171, %119
  %174 = load i32, i32* %3, align 4
  ret i32 %174
}

declare dso_local i32 @output_byte(%struct.archive_write_filter*, i32) #1

declare dso_local i8* @MAXCODE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
