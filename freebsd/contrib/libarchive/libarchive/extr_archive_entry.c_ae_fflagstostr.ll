; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_entry.c_ae_fflagstostr.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_entry.c_ae_fflagstostr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.flag = type { i8*, i64, i64 }

@flags = common dso_local global %struct.flag* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i64, i64)* @ae_fflagstostr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @ae_fflagstostr(i64 %0, i64 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.flag*, align 8
  %11 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  %12 = load i64, i64* %4, align 8
  %13 = load i64, i64* %5, align 8
  %14 = or i64 %12, %13
  store i64 %14, i64* %9, align 8
  store i64 0, i64* %11, align 8
  %15 = load %struct.flag*, %struct.flag** @flags, align 8
  store %struct.flag* %15, %struct.flag** %10, align 8
  br label %16

16:                                               ; preds = %51, %2
  %17 = load %struct.flag*, %struct.flag** %10, align 8
  %18 = getelementptr inbounds %struct.flag, %struct.flag* %17, i32 0, i32 0
  %19 = load i8*, i8** %18, align 8
  %20 = icmp ne i8* %19, null
  br i1 %20, label %21, label %54

21:                                               ; preds = %16
  %22 = load i64, i64* %9, align 8
  %23 = load %struct.flag*, %struct.flag** %10, align 8
  %24 = getelementptr inbounds %struct.flag, %struct.flag* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = load %struct.flag*, %struct.flag** %10, align 8
  %27 = getelementptr inbounds %struct.flag, %struct.flag* %26, i32 0, i32 2
  %28 = load i64, i64* %27, align 8
  %29 = or i64 %25, %28
  %30 = and i64 %22, %29
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %50

32:                                               ; preds = %21
  %33 = load %struct.flag*, %struct.flag** %10, align 8
  %34 = getelementptr inbounds %struct.flag, %struct.flag* %33, i32 0, i32 0
  %35 = load i8*, i8** %34, align 8
  %36 = call i64 @strlen(i8* %35)
  %37 = add nsw i64 %36, 1
  %38 = load i64, i64* %11, align 8
  %39 = add i64 %38, %37
  store i64 %39, i64* %11, align 8
  %40 = load %struct.flag*, %struct.flag** %10, align 8
  %41 = getelementptr inbounds %struct.flag, %struct.flag* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = load %struct.flag*, %struct.flag** %10, align 8
  %44 = getelementptr inbounds %struct.flag, %struct.flag* %43, i32 0, i32 2
  %45 = load i64, i64* %44, align 8
  %46 = or i64 %42, %45
  %47 = xor i64 %46, -1
  %48 = load i64, i64* %9, align 8
  %49 = and i64 %48, %47
  store i64 %49, i64* %9, align 8
  br label %50

50:                                               ; preds = %32, %21
  br label %51

51:                                               ; preds = %50
  %52 = load %struct.flag*, %struct.flag** %10, align 8
  %53 = getelementptr inbounds %struct.flag, %struct.flag* %52, i32 1
  store %struct.flag* %53, %struct.flag** %10, align 8
  br label %16

54:                                               ; preds = %16
  %55 = load i64, i64* %11, align 8
  %56 = icmp eq i64 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %54
  store i8* null, i8** %3, align 8
  br label %158

58:                                               ; preds = %54
  %59 = load i64, i64* %11, align 8
  %60 = call i64 @malloc(i64 %59)
  %61 = inttoptr i64 %60 to i8*
  store i8* %61, i8** %6, align 8
  %62 = load i8*, i8** %6, align 8
  %63 = icmp eq i8* %62, null
  br i1 %63, label %64, label %65

64:                                               ; preds = %58
  store i8* null, i8** %3, align 8
  br label %158

65:                                               ; preds = %58
  %66 = load i8*, i8** %6, align 8
  store i8* %66, i8** %7, align 8
  %67 = load %struct.flag*, %struct.flag** @flags, align 8
  store %struct.flag* %67, %struct.flag** %10, align 8
  br label %68

68:                                               ; preds = %152, %65
  %69 = load %struct.flag*, %struct.flag** %10, align 8
  %70 = getelementptr inbounds %struct.flag, %struct.flag* %69, i32 0, i32 0
  %71 = load i8*, i8** %70, align 8
  %72 = icmp ne i8* %71, null
  br i1 %72, label %73, label %155

73:                                               ; preds = %68
  %74 = load i64, i64* %4, align 8
  %75 = load %struct.flag*, %struct.flag** %10, align 8
  %76 = getelementptr inbounds %struct.flag, %struct.flag* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = and i64 %74, %77
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %87, label %80

80:                                               ; preds = %73
  %81 = load i64, i64* %5, align 8
  %82 = load %struct.flag*, %struct.flag** %10, align 8
  %83 = getelementptr inbounds %struct.flag, %struct.flag* %82, i32 0, i32 2
  %84 = load i64, i64* %83, align 8
  %85 = and i64 %81, %84
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %92

87:                                               ; preds = %80, %73
  %88 = load %struct.flag*, %struct.flag** %10, align 8
  %89 = getelementptr inbounds %struct.flag, %struct.flag* %88, i32 0, i32 0
  %90 = load i8*, i8** %89, align 8
  %91 = getelementptr inbounds i8, i8* %90, i64 2
  store i8* %91, i8** %8, align 8
  br label %112

92:                                               ; preds = %80
  %93 = load i64, i64* %4, align 8
  %94 = load %struct.flag*, %struct.flag** %10, align 8
  %95 = getelementptr inbounds %struct.flag, %struct.flag* %94, i32 0, i32 2
  %96 = load i64, i64* %95, align 8
  %97 = and i64 %93, %96
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %106, label %99

99:                                               ; preds = %92
  %100 = load i64, i64* %5, align 8
  %101 = load %struct.flag*, %struct.flag** %10, align 8
  %102 = getelementptr inbounds %struct.flag, %struct.flag* %101, i32 0, i32 1
  %103 = load i64, i64* %102, align 8
  %104 = and i64 %100, %103
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %110

106:                                              ; preds = %99, %92
  %107 = load %struct.flag*, %struct.flag** %10, align 8
  %108 = getelementptr inbounds %struct.flag, %struct.flag* %107, i32 0, i32 0
  %109 = load i8*, i8** %108, align 8
  store i8* %109, i8** %8, align 8
  br label %111

110:                                              ; preds = %99
  br label %152

111:                                              ; preds = %106
  br label %112

112:                                              ; preds = %111, %87
  %113 = load %struct.flag*, %struct.flag** %10, align 8
  %114 = getelementptr inbounds %struct.flag, %struct.flag* %113, i32 0, i32 1
  %115 = load i64, i64* %114, align 8
  %116 = load %struct.flag*, %struct.flag** %10, align 8
  %117 = getelementptr inbounds %struct.flag, %struct.flag* %116, i32 0, i32 2
  %118 = load i64, i64* %117, align 8
  %119 = or i64 %115, %118
  %120 = xor i64 %119, -1
  %121 = load i64, i64* %4, align 8
  %122 = and i64 %121, %120
  store i64 %122, i64* %4, align 8
  %123 = load %struct.flag*, %struct.flag** %10, align 8
  %124 = getelementptr inbounds %struct.flag, %struct.flag* %123, i32 0, i32 1
  %125 = load i64, i64* %124, align 8
  %126 = load %struct.flag*, %struct.flag** %10, align 8
  %127 = getelementptr inbounds %struct.flag, %struct.flag* %126, i32 0, i32 2
  %128 = load i64, i64* %127, align 8
  %129 = or i64 %125, %128
  %130 = xor i64 %129, -1
  %131 = load i64, i64* %5, align 8
  %132 = and i64 %131, %130
  store i64 %132, i64* %5, align 8
  %133 = load i8*, i8** %7, align 8
  %134 = load i8*, i8** %6, align 8
  %135 = icmp ugt i8* %133, %134
  br i1 %135, label %136, label %139

136:                                              ; preds = %112
  %137 = load i8*, i8** %7, align 8
  %138 = getelementptr inbounds i8, i8* %137, i32 1
  store i8* %138, i8** %7, align 8
  store i8 44, i8* %137, align 1
  br label %139

139:                                              ; preds = %136, %112
  br label %140

140:                                              ; preds = %148, %139
  %141 = load i8*, i8** %8, align 8
  %142 = getelementptr inbounds i8, i8* %141, i32 1
  store i8* %142, i8** %8, align 8
  %143 = load i8, i8* %141, align 1
  %144 = load i8*, i8** %7, align 8
  %145 = getelementptr inbounds i8, i8* %144, i32 1
  store i8* %145, i8** %7, align 8
  store i8 %143, i8* %144, align 1
  %146 = sext i8 %143 to i32
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %149

148:                                              ; preds = %140
  br label %140

149:                                              ; preds = %140
  %150 = load i8*, i8** %7, align 8
  %151 = getelementptr inbounds i8, i8* %150, i32 -1
  store i8* %151, i8** %7, align 8
  br label %152

152:                                              ; preds = %149, %110
  %153 = load %struct.flag*, %struct.flag** %10, align 8
  %154 = getelementptr inbounds %struct.flag, %struct.flag* %153, i32 1
  store %struct.flag* %154, %struct.flag** %10, align 8
  br label %68

155:                                              ; preds = %68
  %156 = load i8*, i8** %7, align 8
  store i8 0, i8* %156, align 1
  %157 = load i8*, i8** %6, align 8
  store i8* %157, i8** %3, align 8
  br label %158

158:                                              ; preds = %155, %64, %57
  %159 = load i8*, i8** %3, align 8
  ret i8* %159
}

declare dso_local i64 @strlen(i8*) #1

declare dso_local i64 @malloc(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
