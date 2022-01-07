; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/scsi/extr_scsi_all.c_scsi_extract_sense_len.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/scsi/extr_scsi_all.c_scsi_extract_sense_len.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_sense_data = type { i32 }
%struct.scsi_sense_data_desc = type { i32, i32, i32 }
%struct.scsi_sense_data_fixed = type { i32, i32, i32 }

@SSD_ERRCODE = common dso_local global i32 0, align 4
@SSD_KEY = common dso_local global i32 0, align 4
@add_sense_code = common dso_local global i32* null, align 8
@add_sense_code_qual = common dso_local global i32* null, align 8
@flags = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @scsi_extract_sense_len(%struct.scsi_sense_data* %0, i64 %1, i32* %2, i32* %3, i32* %4, i32* %5, i32 %6) #0 {
  %8 = alloca %struct.scsi_sense_data*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.scsi_sense_data_desc*, align 8
  %16 = alloca %struct.scsi_sense_data_fixed*, align 8
  store %struct.scsi_sense_data* %0, %struct.scsi_sense_data** %8, align 8
  store i64 %1, i64* %9, align 8
  store i32* %2, i32** %10, align 8
  store i32* %3, i32** %11, align 8
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  store i32 %6, i32* %14, align 4
  %17 = load i64, i64* %9, align 8
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %19, label %33

19:                                               ; preds = %7
  %20 = load i32, i32* %14, align 4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %19
  %23 = load i32*, i32** %10, align 8
  store i32 0, i32* %23, align 4
  %24 = load i32*, i32** %11, align 8
  store i32 0, i32* %24, align 4
  %25 = load i32*, i32** %12, align 8
  store i32 0, i32* %25, align 4
  %26 = load i32*, i32** %13, align 8
  store i32 0, i32* %26, align 4
  br label %32

27:                                               ; preds = %19
  %28 = load i32*, i32** %10, align 8
  store i32 -1, i32* %28, align 4
  %29 = load i32*, i32** %11, align 8
  store i32 -1, i32* %29, align 4
  %30 = load i32*, i32** %12, align 8
  store i32 -1, i32* %30, align 4
  %31 = load i32*, i32** %13, align 8
  store i32 -1, i32* %31, align 4
  br label %32

32:                                               ; preds = %27, %22
  br label %165

33:                                               ; preds = %7
  %34 = load %struct.scsi_sense_data*, %struct.scsi_sense_data** %8, align 8
  %35 = getelementptr inbounds %struct.scsi_sense_data, %struct.scsi_sense_data* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @SSD_ERRCODE, align 4
  %38 = and i32 %36, %37
  %39 = load i32*, i32** %10, align 8
  store i32 %38, i32* %39, align 4
  %40 = load i32*, i32** %10, align 8
  %41 = load i32, i32* %40, align 4
  switch i32 %41, label %99 [
    i32 129, label %42
    i32 128, label %42
    i32 131, label %98
    i32 130, label %98
  ]

42:                                               ; preds = %33, %33
  %43 = load %struct.scsi_sense_data*, %struct.scsi_sense_data** %8, align 8
  %44 = bitcast %struct.scsi_sense_data* %43 to %struct.scsi_sense_data_desc*
  store %struct.scsi_sense_data_desc* %44, %struct.scsi_sense_data_desc** %15, align 8
  %45 = load %struct.scsi_sense_data_desc*, %struct.scsi_sense_data_desc** %15, align 8
  %46 = load i64, i64* %9, align 8
  %47 = load i32*, i32** %11, align 8
  %48 = call i32 @SSD_DESC_IS_PRESENT(%struct.scsi_sense_data_desc* %45, i64 %46, i32* %47)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %57

50:                                               ; preds = %42
  %51 = load %struct.scsi_sense_data_desc*, %struct.scsi_sense_data_desc** %15, align 8
  %52 = getelementptr inbounds %struct.scsi_sense_data_desc, %struct.scsi_sense_data_desc* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @SSD_KEY, align 4
  %55 = and i32 %53, %54
  %56 = load i32*, i32** %11, align 8
  store i32 %55, i32* %56, align 4
  br label %63

57:                                               ; preds = %42
  %58 = load i32, i32* %14, align 4
  %59 = icmp ne i32 %58, 0
  %60 = zext i1 %59 to i64
  %61 = select i1 %59, i32 -1, i32 0
  %62 = load i32*, i32** %11, align 8
  store i32 %61, i32* %62, align 4
  br label %63

63:                                               ; preds = %57, %50
  %64 = load %struct.scsi_sense_data_desc*, %struct.scsi_sense_data_desc** %15, align 8
  %65 = load i64, i64* %9, align 8
  %66 = load i32*, i32** @add_sense_code, align 8
  %67 = call i32 @SSD_DESC_IS_PRESENT(%struct.scsi_sense_data_desc* %64, i64 %65, i32* %66)
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %74

69:                                               ; preds = %63
  %70 = load %struct.scsi_sense_data_desc*, %struct.scsi_sense_data_desc** %15, align 8
  %71 = getelementptr inbounds %struct.scsi_sense_data_desc, %struct.scsi_sense_data_desc* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = load i32*, i32** %12, align 8
  store i32 %72, i32* %73, align 4
  br label %80

74:                                               ; preds = %63
  %75 = load i32, i32* %14, align 4
  %76 = icmp ne i32 %75, 0
  %77 = zext i1 %76 to i64
  %78 = select i1 %76, i32 -1, i32 0
  %79 = load i32*, i32** %12, align 8
  store i32 %78, i32* %79, align 4
  br label %80

80:                                               ; preds = %74, %69
  %81 = load %struct.scsi_sense_data_desc*, %struct.scsi_sense_data_desc** %15, align 8
  %82 = load i64, i64* %9, align 8
  %83 = load i32*, i32** @add_sense_code_qual, align 8
  %84 = call i32 @SSD_DESC_IS_PRESENT(%struct.scsi_sense_data_desc* %81, i64 %82, i32* %83)
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %91

86:                                               ; preds = %80
  %87 = load %struct.scsi_sense_data_desc*, %struct.scsi_sense_data_desc** %15, align 8
  %88 = getelementptr inbounds %struct.scsi_sense_data_desc, %struct.scsi_sense_data_desc* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 4
  %90 = load i32*, i32** %13, align 8
  store i32 %89, i32* %90, align 4
  br label %97

91:                                               ; preds = %80
  %92 = load i32, i32* %14, align 4
  %93 = icmp ne i32 %92, 0
  %94 = zext i1 %93 to i64
  %95 = select i1 %93, i32 -1, i32 0
  %96 = load i32*, i32** %13, align 8
  store i32 %95, i32* %96, align 4
  br label %97

97:                                               ; preds = %91, %86
  br label %165

98:                                               ; preds = %33, %33
  br label %99

99:                                               ; preds = %33, %98
  %100 = load %struct.scsi_sense_data*, %struct.scsi_sense_data** %8, align 8
  %101 = bitcast %struct.scsi_sense_data* %100 to %struct.scsi_sense_data_fixed*
  store %struct.scsi_sense_data_fixed* %101, %struct.scsi_sense_data_fixed** %16, align 8
  %102 = load %struct.scsi_sense_data_fixed*, %struct.scsi_sense_data_fixed** %16, align 8
  %103 = load i64, i64* %9, align 8
  %104 = load i32*, i32** @flags, align 8
  %105 = call i32 @SSD_FIXED_IS_PRESENT(%struct.scsi_sense_data_fixed* %102, i64 %103, i32* %104)
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %114

107:                                              ; preds = %99
  %108 = load %struct.scsi_sense_data_fixed*, %struct.scsi_sense_data_fixed** %16, align 8
  %109 = getelementptr inbounds %struct.scsi_sense_data_fixed, %struct.scsi_sense_data_fixed* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = load i32, i32* @SSD_KEY, align 4
  %112 = and i32 %110, %111
  %113 = load i32*, i32** %11, align 8
  store i32 %112, i32* %113, align 4
  br label %120

114:                                              ; preds = %99
  %115 = load i32, i32* %14, align 4
  %116 = icmp ne i32 %115, 0
  %117 = zext i1 %116 to i64
  %118 = select i1 %116, i32 -1, i32 0
  %119 = load i32*, i32** %11, align 8
  store i32 %118, i32* %119, align 4
  br label %120

120:                                              ; preds = %114, %107
  %121 = load %struct.scsi_sense_data_fixed*, %struct.scsi_sense_data_fixed** %16, align 8
  %122 = load i64, i64* %9, align 8
  %123 = load i32*, i32** @add_sense_code, align 8
  %124 = call i32 @SSD_FIXED_IS_PRESENT(%struct.scsi_sense_data_fixed* %121, i64 %122, i32* %123)
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %136

126:                                              ; preds = %120
  %127 = load %struct.scsi_sense_data_fixed*, %struct.scsi_sense_data_fixed** %16, align 8
  %128 = load i32*, i32** @add_sense_code, align 8
  %129 = call i32 @SSD_FIXED_IS_FILLED(%struct.scsi_sense_data_fixed* %127, i32* %128)
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %136

131:                                              ; preds = %126
  %132 = load %struct.scsi_sense_data_fixed*, %struct.scsi_sense_data_fixed** %16, align 8
  %133 = getelementptr inbounds %struct.scsi_sense_data_fixed, %struct.scsi_sense_data_fixed* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 4
  %135 = load i32*, i32** %12, align 8
  store i32 %134, i32* %135, align 4
  br label %142

136:                                              ; preds = %126, %120
  %137 = load i32, i32* %14, align 4
  %138 = icmp ne i32 %137, 0
  %139 = zext i1 %138 to i64
  %140 = select i1 %138, i32 -1, i32 0
  %141 = load i32*, i32** %12, align 8
  store i32 %140, i32* %141, align 4
  br label %142

142:                                              ; preds = %136, %131
  %143 = load %struct.scsi_sense_data_fixed*, %struct.scsi_sense_data_fixed** %16, align 8
  %144 = load i64, i64* %9, align 8
  %145 = load i32*, i32** @add_sense_code_qual, align 8
  %146 = call i32 @SSD_FIXED_IS_PRESENT(%struct.scsi_sense_data_fixed* %143, i64 %144, i32* %145)
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %158

148:                                              ; preds = %142
  %149 = load %struct.scsi_sense_data_fixed*, %struct.scsi_sense_data_fixed** %16, align 8
  %150 = load i32*, i32** @add_sense_code_qual, align 8
  %151 = call i32 @SSD_FIXED_IS_FILLED(%struct.scsi_sense_data_fixed* %149, i32* %150)
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %158

153:                                              ; preds = %148
  %154 = load %struct.scsi_sense_data_fixed*, %struct.scsi_sense_data_fixed** %16, align 8
  %155 = getelementptr inbounds %struct.scsi_sense_data_fixed, %struct.scsi_sense_data_fixed* %154, i32 0, i32 2
  %156 = load i32, i32* %155, align 4
  %157 = load i32*, i32** %13, align 8
  store i32 %156, i32* %157, align 4
  br label %164

158:                                              ; preds = %148, %142
  %159 = load i32, i32* %14, align 4
  %160 = icmp ne i32 %159, 0
  %161 = zext i1 %160 to i64
  %162 = select i1 %160, i32 -1, i32 0
  %163 = load i32*, i32** %13, align 8
  store i32 %162, i32* %163, align 4
  br label %164

164:                                              ; preds = %158, %153
  br label %165

165:                                              ; preds = %32, %164, %97
  ret void
}

declare dso_local i32 @SSD_DESC_IS_PRESENT(%struct.scsi_sense_data_desc*, i64, i32*) #1

declare dso_local i32 @SSD_FIXED_IS_PRESENT(%struct.scsi_sense_data_fixed*, i64, i32*) #1

declare dso_local i32 @SSD_FIXED_IS_FILLED(%struct.scsi_sense_data_fixed*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
