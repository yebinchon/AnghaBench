; ModuleID = '/home/carl/AnghaBench/freebsd/stand/libsa/extr_cd9660read.c_dirmatch.c'
source_filename = "/home/carl/AnghaBench/freebsd/stand/libsa/extr_cd9660read.c_dirmatch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iso_directory_record = type { i8*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.iso_directory_record*, i32, i32)* @dirmatch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dirmatch(i8* %0, %struct.iso_directory_record* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.iso_directory_record*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store %struct.iso_directory_record* %1, %struct.iso_directory_record** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i8* null, i8** %11, align 8
  %14 = load i32, i32* %8, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %4
  %17 = load %struct.iso_directory_record*, %struct.iso_directory_record** %7, align 8
  %18 = load i32, i32* %9, align 4
  %19 = call i8* @rrip_lookup_name(%struct.iso_directory_record* %17, i32 %18, i64* %10)
  store i8* %19, i8** %11, align 8
  br label %21

20:                                               ; preds = %4
  store i8* null, i8** %11, align 8
  br label %21

21:                                               ; preds = %20, %16
  %22 = load i8*, i8** %11, align 8
  %23 = icmp eq i8* %22, null
  br i1 %23, label %24, label %32

24:                                               ; preds = %21
  %25 = load %struct.iso_directory_record*, %struct.iso_directory_record** %7, align 8
  %26 = getelementptr inbounds %struct.iso_directory_record, %struct.iso_directory_record* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = call i64 @isonum_711(i32 %27)
  store i64 %28, i64* %10, align 8
  %29 = load %struct.iso_directory_record*, %struct.iso_directory_record** %7, align 8
  %30 = getelementptr inbounds %struct.iso_directory_record, %struct.iso_directory_record* %29, i32 0, i32 0
  %31 = load i8*, i8** %30, align 8
  store i8* %31, i8** %11, align 8
  store i32 1, i32* %13, align 4
  br label %33

32:                                               ; preds = %21
  store i32 0, i32* %13, align 4
  br label %33

33:                                               ; preds = %32, %24
  %34 = load i64, i64* %10, align 8
  %35 = trunc i64 %34 to i32
  store i32 %35, i32* %12, align 4
  br label %36

36:                                               ; preds = %73, %33
  %37 = load i32, i32* %12, align 4
  %38 = add nsw i32 %37, -1
  store i32 %38, i32* %12, align 4
  %39 = icmp sge i32 %38, 0
  br i1 %39, label %40, label %78

40:                                               ; preds = %36
  %41 = load i8*, i8** %6, align 8
  %42 = load i8, i8* %41, align 1
  %43 = icmp ne i8 %42, 0
  br i1 %43, label %44, label %49

44:                                               ; preds = %40
  %45 = load i8*, i8** %6, align 8
  %46 = load i8, i8* %45, align 1
  %47 = sext i8 %46 to i32
  %48 = icmp eq i32 %47, 47
  br i1 %48, label %49, label %50

49:                                               ; preds = %44, %40
  br label %78

50:                                               ; preds = %44
  %51 = load i8*, i8** %6, align 8
  %52 = load i8, i8* %51, align 1
  %53 = sext i8 %52 to i32
  %54 = load i8*, i8** %11, align 8
  %55 = load i8, i8* %54, align 1
  %56 = sext i8 %55 to i32
  %57 = icmp eq i32 %53, %56
  br i1 %57, label %58, label %59

58:                                               ; preds = %50
  br label %73

59:                                               ; preds = %50
  %60 = load i32, i32* %13, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %72, label %62

62:                                               ; preds = %59
  %63 = load i8*, i8** %6, align 8
  %64 = load i8, i8* %63, align 1
  %65 = call signext i8 @toupper(i8 signext %64)
  %66 = sext i8 %65 to i32
  %67 = load i8*, i8** %11, align 8
  %68 = load i8, i8* %67, align 1
  %69 = sext i8 %68 to i32
  %70 = icmp eq i32 %66, %69
  br i1 %70, label %71, label %72

71:                                               ; preds = %62
  br label %73

72:                                               ; preds = %62, %59
  store i32 0, i32* %5, align 4
  br label %139

73:                                               ; preds = %71, %58
  %74 = load i8*, i8** %6, align 8
  %75 = getelementptr inbounds i8, i8* %74, i32 1
  store i8* %75, i8** %6, align 8
  %76 = load i8*, i8** %11, align 8
  %77 = getelementptr inbounds i8, i8* %76, i32 1
  store i8* %77, i8** %11, align 8
  br label %36

78:                                               ; preds = %49, %36
  %79 = load i8*, i8** %6, align 8
  %80 = load i8, i8* %79, align 1
  %81 = sext i8 %80 to i32
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %89

83:                                               ; preds = %78
  %84 = load i8*, i8** %6, align 8
  %85 = load i8, i8* %84, align 1
  %86 = sext i8 %85 to i32
  %87 = icmp ne i32 %86, 47
  br i1 %87, label %88, label %89

88:                                               ; preds = %83
  store i32 0, i32* %5, align 4
  br label %139

89:                                               ; preds = %83, %78
  %90 = load i32, i32* %12, align 4
  %91 = icmp sge i32 %90, 0
  br i1 %91, label %92, label %138

92:                                               ; preds = %89
  %93 = load i8*, i8** %11, align 8
  %94 = load i8, i8* %93, align 1
  %95 = sext i8 %94 to i32
  %96 = icmp eq i32 %95, 59
  br i1 %96, label %102, label %97

97:                                               ; preds = %92
  %98 = load i8*, i8** %11, align 8
  %99 = load i8, i8* %98, align 1
  %100 = sext i8 %99 to i32
  %101 = icmp eq i32 %100, 46
  br i1 %101, label %102, label %138

102:                                              ; preds = %97, %92
  %103 = load i8*, i8** %11, align 8
  %104 = load i8, i8* %103, align 1
  %105 = sext i8 %104 to i32
  %106 = icmp eq i32 %105, 46
  br i1 %106, label %107, label %114

107:                                              ; preds = %102
  %108 = load i8*, i8** %11, align 8
  %109 = getelementptr inbounds i8, i8* %108, i64 1
  %110 = load i8, i8* %109, align 1
  %111 = sext i8 %110 to i32
  %112 = icmp ne i32 %111, 59
  br i1 %112, label %113, label %114

113:                                              ; preds = %107
  store i32 0, i32* %5, align 4
  br label %139

114:                                              ; preds = %107, %102
  br label %115

115:                                              ; preds = %136, %114
  %116 = load i32, i32* %12, align 4
  %117 = add nsw i32 %116, -1
  store i32 %117, i32* %12, align 4
  %118 = icmp sge i32 %117, 0
  br i1 %118, label %119, label %137

119:                                              ; preds = %115
  %120 = load i8*, i8** %11, align 8
  %121 = getelementptr inbounds i8, i8* %120, i32 1
  store i8* %121, i8** %11, align 8
  %122 = load i8, i8* %121, align 1
  %123 = sext i8 %122 to i32
  %124 = icmp ne i32 %123, 59
  br i1 %124, label %125, label %136

125:                                              ; preds = %119
  %126 = load i8*, i8** %11, align 8
  %127 = load i8, i8* %126, align 1
  %128 = sext i8 %127 to i32
  %129 = icmp slt i32 %128, 48
  br i1 %129, label %135, label %130

130:                                              ; preds = %125
  %131 = load i8*, i8** %11, align 8
  %132 = load i8, i8* %131, align 1
  %133 = sext i8 %132 to i32
  %134 = icmp sgt i32 %133, 57
  br i1 %134, label %135, label %136

135:                                              ; preds = %130, %125
  store i32 0, i32* %5, align 4
  br label %139

136:                                              ; preds = %130, %119
  br label %115

137:                                              ; preds = %115
  br label %138

138:                                              ; preds = %137, %97, %89
  store i32 1, i32* %5, align 4
  br label %139

139:                                              ; preds = %138, %135, %113, %88, %72
  %140 = load i32, i32* %5, align 4
  ret i32 %140
}

declare dso_local i8* @rrip_lookup_name(%struct.iso_directory_record*, i32, i64*) #1

declare dso_local i64 @isonum_711(i32) #1

declare dso_local signext i8 @toupper(i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
