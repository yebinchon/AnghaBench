; ModuleID = '/home/carl/AnghaBench/freebsd/stand/libsa/extr_tftp.c_tftp_read.c'
source_filename = "/home/carl/AnghaBench/freebsd/stand/libsa/extr_tftp.c_tftp_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.open_file = type { %struct.tftp_handle* }
%struct.tftp_handle = type { i64, i64, i32, i32, i32, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@.str = private unnamed_addr constant [23 x i8] c"No error: read aborted\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.open_file*, i8*, i64, i64*)* @tftp_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tftp_read(%struct.open_file* %0, i8* %1, i64 %2, i64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.open_file*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64*, align 8
  %10 = alloca %struct.tftp_handle*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.open_file* %0, %struct.open_file** %6, align 8
  store i8* %1, i8** %7, align 8
  store i64 %2, i64* %8, align 8
  store i64* %3, i64** %9, align 8
  store i32 0, i32* %12, align 4
  %17 = load i64, i64* %8, align 8
  store i64 %17, i64* %11, align 8
  %18 = load %struct.open_file*, %struct.open_file** %6, align 8
  %19 = getelementptr inbounds %struct.open_file, %struct.open_file* %18, i32 0, i32 0
  %20 = load %struct.tftp_handle*, %struct.tftp_handle** %19, align 8
  store %struct.tftp_handle* %20, %struct.tftp_handle** %10, align 8
  %21 = load %struct.tftp_handle*, %struct.tftp_handle** %10, align 8
  %22 = getelementptr inbounds %struct.tftp_handle, %struct.tftp_handle* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp sgt i64 %23, 0
  br i1 %24, label %25, label %43

25:                                               ; preds = %4
  %26 = load %struct.tftp_handle*, %struct.tftp_handle** %10, align 8
  %27 = getelementptr inbounds %struct.tftp_handle, %struct.tftp_handle* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* %8, align 8
  %30 = add i64 %28, %29
  %31 = load %struct.tftp_handle*, %struct.tftp_handle** %10, align 8
  %32 = getelementptr inbounds %struct.tftp_handle, %struct.tftp_handle* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp ugt i64 %30, %33
  br i1 %34, label %35, label %43

35:                                               ; preds = %25
  %36 = load %struct.tftp_handle*, %struct.tftp_handle** %10, align 8
  %37 = getelementptr inbounds %struct.tftp_handle, %struct.tftp_handle* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load %struct.tftp_handle*, %struct.tftp_handle** %10, align 8
  %40 = getelementptr inbounds %struct.tftp_handle, %struct.tftp_handle* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = sub i64 %38, %41
  store i64 %42, i64* %8, align 8
  br label %43

43:                                               ; preds = %35, %25, %4
  br label %44

44:                                               ; preds = %173, %43
  %45 = load i64, i64* %8, align 8
  %46 = icmp ugt i64 %45, 0
  br i1 %46, label %47, label %174

47:                                               ; preds = %44
  %48 = call i32 @twiddle(i32 32)
  %49 = load %struct.tftp_handle*, %struct.tftp_handle** %10, align 8
  %50 = getelementptr inbounds %struct.tftp_handle, %struct.tftp_handle* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = load %struct.tftp_handle*, %struct.tftp_handle** %10, align 8
  %53 = getelementptr inbounds %struct.tftp_handle, %struct.tftp_handle* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 8
  %55 = sext i32 %54 to i64
  %56 = udiv i64 %51, %55
  %57 = add i64 %56, 1
  %58 = trunc i64 %57 to i32
  store i32 %58, i32* %13, align 4
  %59 = load %struct.tftp_handle*, %struct.tftp_handle** %10, align 8
  %60 = getelementptr inbounds %struct.tftp_handle, %struct.tftp_handle* %59, i32 0, i32 3
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* %13, align 4
  %63 = icmp sgt i32 %61, %62
  br i1 %63, label %64, label %73

64:                                               ; preds = %47
  %65 = load %struct.tftp_handle*, %struct.tftp_handle** %10, align 8
  %66 = call i32 @tftp_senderr(%struct.tftp_handle* %65, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %67 = load %struct.tftp_handle*, %struct.tftp_handle** %10, align 8
  %68 = call i32 @tftp_makereq(%struct.tftp_handle* %67)
  store i32 %68, i32* %12, align 4
  %69 = load i32, i32* %12, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %64
  br label %174

72:                                               ; preds = %64
  br label %73

73:                                               ; preds = %72, %47
  br label %74

74:                                               ; preds = %93, %73
  %75 = load %struct.tftp_handle*, %struct.tftp_handle** %10, align 8
  %76 = getelementptr inbounds %struct.tftp_handle, %struct.tftp_handle* %75, i32 0, i32 3
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* %13, align 4
  %79 = icmp slt i32 %77, %78
  br i1 %79, label %80, label %94

80:                                               ; preds = %74
  %81 = load %struct.tftp_handle*, %struct.tftp_handle** %10, align 8
  %82 = call i32 @tftp_getnextblock(%struct.tftp_handle* %81)
  store i32 %82, i32* %12, align 4
  %83 = load i32, i32* %12, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %87

85:                                               ; preds = %80
  %86 = load i32, i32* %12, align 4
  store i32 %86, i32* %5, align 4
  br label %182

87:                                               ; preds = %80
  %88 = load %struct.tftp_handle*, %struct.tftp_handle** %10, align 8
  %89 = getelementptr inbounds %struct.tftp_handle, %struct.tftp_handle* %88, i32 0, i32 5
  %90 = load i64, i64* %89, align 8
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %93

92:                                               ; preds = %87
  br label %94

93:                                               ; preds = %87
  br label %74

94:                                               ; preds = %92, %74
  %95 = load %struct.tftp_handle*, %struct.tftp_handle** %10, align 8
  %96 = getelementptr inbounds %struct.tftp_handle, %struct.tftp_handle* %95, i32 0, i32 3
  %97 = load i32, i32* %96, align 4
  %98 = load i32, i32* %13, align 4
  %99 = icmp eq i32 %97, %98
  br i1 %99, label %100, label %171

100:                                              ; preds = %94
  %101 = load %struct.tftp_handle*, %struct.tftp_handle** %10, align 8
  %102 = getelementptr inbounds %struct.tftp_handle, %struct.tftp_handle* %101, i32 0, i32 1
  %103 = load i64, i64* %102, align 8
  %104 = load %struct.tftp_handle*, %struct.tftp_handle** %10, align 8
  %105 = getelementptr inbounds %struct.tftp_handle, %struct.tftp_handle* %104, i32 0, i32 2
  %106 = load i32, i32* %105, align 8
  %107 = sext i32 %106 to i64
  %108 = urem i64 %103, %107
  %109 = trunc i64 %108 to i32
  store i32 %109, i32* %15, align 4
  %110 = load %struct.tftp_handle*, %struct.tftp_handle** %10, align 8
  %111 = getelementptr inbounds %struct.tftp_handle, %struct.tftp_handle* %110, i32 0, i32 4
  %112 = load i32, i32* %111, align 8
  %113 = load i32, i32* %15, align 4
  %114 = sub nsw i32 %112, %113
  store i32 %114, i32* %16, align 4
  %115 = load i32, i32* %16, align 4
  %116 = icmp slt i32 %115, 0
  br i1 %116, label %117, label %119

117:                                              ; preds = %100
  %118 = load i32, i32* @EINVAL, align 4
  store i32 %118, i32* %5, align 4
  br label %182

119:                                              ; preds = %100
  %120 = load i64, i64* %8, align 8
  %121 = load i32, i32* %16, align 4
  %122 = sext i32 %121 to i64
  %123 = icmp ult i64 %120, %122
  br i1 %123, label %124, label %126

124:                                              ; preds = %119
  %125 = load i64, i64* %8, align 8
  br label %129

126:                                              ; preds = %119
  %127 = load i32, i32* %16, align 4
  %128 = sext i32 %127 to i64
  br label %129

129:                                              ; preds = %126, %124
  %130 = phi i64 [ %125, %124 ], [ %128, %126 ]
  %131 = trunc i64 %130 to i32
  store i32 %131, i32* %14, align 4
  %132 = load %struct.tftp_handle*, %struct.tftp_handle** %10, align 8
  %133 = getelementptr inbounds %struct.tftp_handle, %struct.tftp_handle* %132, i32 0, i32 6
  %134 = load %struct.TYPE_2__*, %struct.TYPE_2__** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %134, i32 0, i32 0
  %136 = load i64, i64* %135, align 8
  %137 = load i32, i32* %15, align 4
  %138 = sext i32 %137 to i64
  %139 = add nsw i64 %136, %138
  %140 = load i8*, i8** %7, align 8
  %141 = load i32, i32* %14, align 4
  %142 = call i32 @bcopy(i64 %139, i8* %140, i32 %141)
  %143 = load i8*, i8** %7, align 8
  %144 = load i32, i32* %14, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds i8, i8* %143, i64 %145
  store i8* %146, i8** %7, align 8
  %147 = load i32, i32* %14, align 4
  %148 = sext i32 %147 to i64
  %149 = load %struct.tftp_handle*, %struct.tftp_handle** %10, align 8
  %150 = getelementptr inbounds %struct.tftp_handle, %struct.tftp_handle* %149, i32 0, i32 1
  %151 = load i64, i64* %150, align 8
  %152 = add i64 %151, %148
  store i64 %152, i64* %150, align 8
  %153 = load i32, i32* %14, align 4
  %154 = sext i32 %153 to i64
  %155 = load i64, i64* %8, align 8
  %156 = sub i64 %155, %154
  store i64 %156, i64* %8, align 8
  %157 = load i32, i32* %14, align 4
  %158 = sext i32 %157 to i64
  %159 = load i64, i64* %11, align 8
  %160 = sub i64 %159, %158
  store i64 %160, i64* %11, align 8
  %161 = load %struct.tftp_handle*, %struct.tftp_handle** %10, align 8
  %162 = getelementptr inbounds %struct.tftp_handle, %struct.tftp_handle* %161, i32 0, i32 5
  %163 = load i64, i64* %162, align 8
  %164 = icmp ne i64 %163, 0
  br i1 %164, label %165, label %170

165:                                              ; preds = %129
  %166 = load i32, i32* %14, align 4
  %167 = load i32, i32* %16, align 4
  %168 = icmp eq i32 %166, %167
  br i1 %168, label %169, label %170

169:                                              ; preds = %165
  br label %174

170:                                              ; preds = %165, %129
  br label %173

171:                                              ; preds = %94
  %172 = load i32, i32* @EINVAL, align 4
  store i32 %172, i32* %5, align 4
  br label %182

173:                                              ; preds = %170
  br label %44

174:                                              ; preds = %169, %71, %44
  %175 = load i64*, i64** %9, align 8
  %176 = icmp ne i64* %175, null
  br i1 %176, label %177, label %180

177:                                              ; preds = %174
  %178 = load i64, i64* %11, align 8
  %179 = load i64*, i64** %9, align 8
  store i64 %178, i64* %179, align 8
  br label %180

180:                                              ; preds = %177, %174
  %181 = load i32, i32* %12, align 4
  store i32 %181, i32* %5, align 4
  br label %182

182:                                              ; preds = %180, %171, %117, %85
  %183 = load i32, i32* %5, align 4
  ret i32 %183
}

declare dso_local i32 @twiddle(i32) #1

declare dso_local i32 @tftp_senderr(%struct.tftp_handle*, i32, i8*) #1

declare dso_local i32 @tftp_makereq(%struct.tftp_handle*) #1

declare dso_local i32 @tftp_getnextblock(%struct.tftp_handle*) #1

declare dso_local i32 @bcopy(i64, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
