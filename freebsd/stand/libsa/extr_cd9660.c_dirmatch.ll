; ModuleID = '/home/carl/AnghaBench/freebsd/stand/libsa/extr_cd9660.c_dirmatch.c'
source_filename = "/home/carl/AnghaBench/freebsd/stand/libsa/extr_cd9660.c_dirmatch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.open_file = type { i32 }
%struct.iso_directory_record = type { i8*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.open_file*, i8*, %struct.iso_directory_record*, i32, i32)* @dirmatch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dirmatch(%struct.open_file* %0, i8* %1, %struct.iso_directory_record* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.open_file*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.iso_directory_record*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.open_file* %0, %struct.open_file** %7, align 8
  store i8* %1, i8** %8, align 8
  store %struct.iso_directory_record* %2, %struct.iso_directory_record** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %18 = load i32, i32* %10, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %5
  %21 = load %struct.open_file*, %struct.open_file** %7, align 8
  %22 = load %struct.iso_directory_record*, %struct.iso_directory_record** %9, align 8
  %23 = load i32, i32* %11, align 4
  %24 = call i8* @rrip_lookup_name(%struct.open_file* %21, %struct.iso_directory_record* %22, i32 %23, i64* %12)
  store i8* %24, i8** %14, align 8
  br label %26

25:                                               ; preds = %5
  store i8* null, i8** %14, align 8
  br label %26

26:                                               ; preds = %25, %20
  %27 = load i8*, i8** %14, align 8
  %28 = icmp eq i8* %27, null
  br i1 %28, label %29, label %37

29:                                               ; preds = %26
  %30 = load %struct.iso_directory_record*, %struct.iso_directory_record** %9, align 8
  %31 = getelementptr inbounds %struct.iso_directory_record, %struct.iso_directory_record* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = call i64 @isonum_711(i32 %32)
  store i64 %33, i64* %12, align 8
  %34 = load %struct.iso_directory_record*, %struct.iso_directory_record** %9, align 8
  %35 = getelementptr inbounds %struct.iso_directory_record, %struct.iso_directory_record* %34, i32 0, i32 0
  %36 = load i8*, i8** %35, align 8
  store i8* %36, i8** %14, align 8
  store i32 1, i32* %17, align 4
  br label %38

37:                                               ; preds = %26
  store i32 0, i32* %17, align 4
  br label %38

38:                                               ; preds = %37, %29
  %39 = load i8*, i8** %8, align 8
  %40 = call i8* @strchr(i8* %39, i8 signext 47)
  store i8* %40, i8** %15, align 8
  %41 = load i8*, i8** %15, align 8
  %42 = icmp ne i8* %41, null
  br i1 %42, label %43, label %49

43:                                               ; preds = %38
  %44 = load i8*, i8** %15, align 8
  %45 = load i8*, i8** %8, align 8
  %46 = ptrtoint i8* %44 to i64
  %47 = ptrtoint i8* %45 to i64
  %48 = sub i64 %46, %47
  store i64 %48, i64* %13, align 8
  br label %52

49:                                               ; preds = %38
  %50 = load i8*, i8** %8, align 8
  %51 = call i64 @strlen(i8* %50)
  store i64 %51, i64* %13, align 8
  br label %52

52:                                               ; preds = %49, %43
  %53 = load i64, i64* %13, align 8
  %54 = load i64, i64* %12, align 8
  %55 = icmp ne i64 %53, %54
  br i1 %55, label %56, label %57

56:                                               ; preds = %52
  store i32 0, i32* %6, align 4
  br label %163

57:                                               ; preds = %52
  %58 = load i64, i64* %12, align 8
  %59 = trunc i64 %58 to i32
  store i32 %59, i32* %16, align 4
  br label %60

60:                                               ; preds = %97, %57
  %61 = load i32, i32* %16, align 4
  %62 = add nsw i32 %61, -1
  store i32 %62, i32* %16, align 4
  %63 = icmp sge i32 %62, 0
  br i1 %63, label %64, label %102

64:                                               ; preds = %60
  %65 = load i8*, i8** %8, align 8
  %66 = load i8, i8* %65, align 1
  %67 = icmp ne i8 %66, 0
  br i1 %67, label %68, label %73

68:                                               ; preds = %64
  %69 = load i8*, i8** %8, align 8
  %70 = load i8, i8* %69, align 1
  %71 = sext i8 %70 to i32
  %72 = icmp eq i32 %71, 47
  br i1 %72, label %73, label %74

73:                                               ; preds = %68, %64
  br label %102

74:                                               ; preds = %68
  %75 = load i8*, i8** %8, align 8
  %76 = load i8, i8* %75, align 1
  %77 = sext i8 %76 to i32
  %78 = load i8*, i8** %14, align 8
  %79 = load i8, i8* %78, align 1
  %80 = sext i8 %79 to i32
  %81 = icmp eq i32 %77, %80
  br i1 %81, label %82, label %83

82:                                               ; preds = %74
  br label %97

83:                                               ; preds = %74
  %84 = load i32, i32* %17, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %96, label %86

86:                                               ; preds = %83
  %87 = load i8*, i8** %8, align 8
  %88 = load i8, i8* %87, align 1
  %89 = call signext i8 @toupper(i8 signext %88)
  %90 = sext i8 %89 to i32
  %91 = load i8*, i8** %14, align 8
  %92 = load i8, i8* %91, align 1
  %93 = sext i8 %92 to i32
  %94 = icmp eq i32 %90, %93
  br i1 %94, label %95, label %96

95:                                               ; preds = %86
  br label %97

96:                                               ; preds = %86, %83
  store i32 0, i32* %6, align 4
  br label %163

97:                                               ; preds = %95, %82
  %98 = load i8*, i8** %8, align 8
  %99 = getelementptr inbounds i8, i8* %98, i32 1
  store i8* %99, i8** %8, align 8
  %100 = load i8*, i8** %14, align 8
  %101 = getelementptr inbounds i8, i8* %100, i32 1
  store i8* %101, i8** %14, align 8
  br label %60

102:                                              ; preds = %73, %60
  %103 = load i8*, i8** %8, align 8
  %104 = load i8, i8* %103, align 1
  %105 = sext i8 %104 to i32
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %113

107:                                              ; preds = %102
  %108 = load i8*, i8** %8, align 8
  %109 = load i8, i8* %108, align 1
  %110 = sext i8 %109 to i32
  %111 = icmp ne i32 %110, 47
  br i1 %111, label %112, label %113

112:                                              ; preds = %107
  store i32 0, i32* %6, align 4
  br label %163

113:                                              ; preds = %107, %102
  %114 = load i32, i32* %16, align 4
  %115 = icmp sge i32 %114, 0
  br i1 %115, label %116, label %162

116:                                              ; preds = %113
  %117 = load i8*, i8** %14, align 8
  %118 = load i8, i8* %117, align 1
  %119 = sext i8 %118 to i32
  %120 = icmp eq i32 %119, 59
  br i1 %120, label %126, label %121

121:                                              ; preds = %116
  %122 = load i8*, i8** %14, align 8
  %123 = load i8, i8* %122, align 1
  %124 = sext i8 %123 to i32
  %125 = icmp eq i32 %124, 46
  br i1 %125, label %126, label %162

126:                                              ; preds = %121, %116
  %127 = load i8*, i8** %14, align 8
  %128 = load i8, i8* %127, align 1
  %129 = sext i8 %128 to i32
  %130 = icmp eq i32 %129, 46
  br i1 %130, label %131, label %138

131:                                              ; preds = %126
  %132 = load i8*, i8** %14, align 8
  %133 = getelementptr inbounds i8, i8* %132, i64 1
  %134 = load i8, i8* %133, align 1
  %135 = sext i8 %134 to i32
  %136 = icmp ne i32 %135, 59
  br i1 %136, label %137, label %138

137:                                              ; preds = %131
  store i32 0, i32* %6, align 4
  br label %163

138:                                              ; preds = %131, %126
  br label %139

139:                                              ; preds = %160, %138
  %140 = load i32, i32* %16, align 4
  %141 = add nsw i32 %140, -1
  store i32 %141, i32* %16, align 4
  %142 = icmp sge i32 %141, 0
  br i1 %142, label %143, label %161

143:                                              ; preds = %139
  %144 = load i8*, i8** %14, align 8
  %145 = getelementptr inbounds i8, i8* %144, i32 1
  store i8* %145, i8** %14, align 8
  %146 = load i8, i8* %145, align 1
  %147 = sext i8 %146 to i32
  %148 = icmp ne i32 %147, 59
  br i1 %148, label %149, label %160

149:                                              ; preds = %143
  %150 = load i8*, i8** %14, align 8
  %151 = load i8, i8* %150, align 1
  %152 = sext i8 %151 to i32
  %153 = icmp slt i32 %152, 48
  br i1 %153, label %159, label %154

154:                                              ; preds = %149
  %155 = load i8*, i8** %14, align 8
  %156 = load i8, i8* %155, align 1
  %157 = sext i8 %156 to i32
  %158 = icmp sgt i32 %157, 57
  br i1 %158, label %159, label %160

159:                                              ; preds = %154, %149
  store i32 0, i32* %6, align 4
  br label %163

160:                                              ; preds = %154, %143
  br label %139

161:                                              ; preds = %139
  br label %162

162:                                              ; preds = %161, %121, %113
  store i32 1, i32* %6, align 4
  br label %163

163:                                              ; preds = %162, %159, %137, %112, %96, %56
  %164 = load i32, i32* %6, align 4
  ret i32 %164
}

declare dso_local i8* @rrip_lookup_name(%struct.open_file*, %struct.iso_directory_record*, i32, i64*) #1

declare dso_local i64 @isonum_711(i32) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local signext i8 @toupper(i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
