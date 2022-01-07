; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/acpica/extr_acpi.c_acpi_parse_interfaces.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/acpica/extr_acpi.c_acpi_parse_interfaces.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_interface = type { i8**, i32 }

@M_TEMP = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.acpi_interface*)* @acpi_parse_interfaces to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @acpi_parse_interfaces(i8* %0, %struct.acpi_interface* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.acpi_interface*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store %struct.acpi_interface* %1, %struct.acpi_interface** %5, align 8
  %10 = load i8*, i8** %4, align 8
  store i8* %10, i8** %6, align 8
  br label %11

11:                                               ; preds = %23, %2
  %12 = load i8*, i8** %6, align 8
  %13 = load i8, i8* %12, align 1
  %14 = call i64 @isspace(i8 signext %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %21, label %16

16:                                               ; preds = %11
  %17 = load i8*, i8** %6, align 8
  %18 = load i8, i8* %17, align 1
  %19 = sext i8 %18 to i32
  %20 = icmp eq i32 %19, 44
  br label %21

21:                                               ; preds = %16, %11
  %22 = phi i1 [ true, %11 ], [ %20, %16 ]
  br i1 %22, label %23, label %26

23:                                               ; preds = %21
  %24 = load i8*, i8** %6, align 8
  %25 = getelementptr inbounds i8, i8* %24, i32 1
  store i8* %25, i8** %6, align 8
  br label %11

26:                                               ; preds = %21
  %27 = load i8*, i8** %6, align 8
  %28 = call i32 @strlen(i8* %27)
  %29 = sext i32 %28 to i64
  store i64 %29, i64* %7, align 8
  %30 = load i64, i64* %7, align 8
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %26
  store i32 0, i32* %3, align 4
  br label %164

33:                                               ; preds = %26
  %34 = load i8*, i8** %6, align 8
  %35 = load i32, i32* @M_TEMP, align 4
  %36 = call i8* @strdup(i8* %34, i32 %35)
  store i8* %36, i8** %6, align 8
  store i32 0, i32* %8, align 4
  br label %37

37:                                               ; preds = %56, %33
  %38 = load i32, i32* %8, align 4
  %39 = sext i32 %38 to i64
  %40 = load i64, i64* %7, align 8
  %41 = icmp ult i64 %39, %40
  br i1 %41, label %42, label %59

42:                                               ; preds = %37
  %43 = load i8*, i8** %6, align 8
  %44 = load i32, i32* %8, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i8, i8* %43, i64 %45
  %47 = load i8, i8* %46, align 1
  %48 = sext i8 %47 to i32
  %49 = icmp eq i32 %48, 44
  br i1 %49, label %50, label %55

50:                                               ; preds = %42
  %51 = load i8*, i8** %6, align 8
  %52 = load i32, i32* %8, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i8, i8* %51, i64 %53
  store i8 0, i8* %54, align 1
  br label %55

55:                                               ; preds = %50, %42
  br label %56

56:                                               ; preds = %55
  %57 = load i32, i32* %8, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %8, align 4
  br label %37

59:                                               ; preds = %37
  store i32 0, i32* %9, align 4
  store i32 0, i32* %8, align 4
  br label %60

60:                                               ; preds = %95, %59
  %61 = load i32, i32* %8, align 4
  %62 = sext i32 %61 to i64
  %63 = load i64, i64* %7, align 8
  %64 = icmp ult i64 %62, %63
  br i1 %64, label %65, label %96

65:                                               ; preds = %60
  %66 = load i8*, i8** %6, align 8
  %67 = load i32, i32* %8, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i8, i8* %66, i64 %68
  %70 = load i8, i8* %69, align 1
  %71 = call i64 @isspace(i8 signext %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %81, label %73

73:                                               ; preds = %65
  %74 = load i8*, i8** %6, align 8
  %75 = load i32, i32* %8, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i8, i8* %74, i64 %76
  %78 = load i8, i8* %77, align 1
  %79 = sext i8 %78 to i32
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %81, label %84

81:                                               ; preds = %73, %65
  %82 = load i32, i32* %8, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %8, align 4
  br label %95

84:                                               ; preds = %73
  %85 = load i8*, i8** %6, align 8
  %86 = load i32, i32* %8, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i8, i8* %85, i64 %87
  %89 = call i32 @strlen(i8* %88)
  %90 = add nsw i32 %89, 1
  %91 = load i32, i32* %8, align 4
  %92 = add nsw i32 %91, %90
  store i32 %92, i32* %8, align 4
  %93 = load i32, i32* %9, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %9, align 4
  br label %95

95:                                               ; preds = %84, %81
  br label %60

96:                                               ; preds = %60
  %97 = load i32, i32* %9, align 4
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %99, label %103

99:                                               ; preds = %96
  %100 = load i8*, i8** %6, align 8
  %101 = load i32, i32* @M_TEMP, align 4
  %102 = call i32 @free(i8* %100, i32 %101)
  store i32 0, i32* %3, align 4
  br label %164

103:                                              ; preds = %96
  %104 = load i32, i32* %9, align 4
  %105 = sext i32 %104 to i64
  %106 = mul i64 8, %105
  %107 = trunc i64 %106 to i32
  %108 = load i32, i32* @M_TEMP, align 4
  %109 = load i32, i32* @M_WAITOK, align 4
  %110 = call i8** @malloc(i32 %107, i32 %108, i32 %109)
  %111 = load %struct.acpi_interface*, %struct.acpi_interface** %5, align 8
  %112 = getelementptr inbounds %struct.acpi_interface, %struct.acpi_interface* %111, i32 0, i32 0
  store i8** %110, i8*** %112, align 8
  %113 = load i32, i32* %9, align 4
  %114 = load %struct.acpi_interface*, %struct.acpi_interface** %5, align 8
  %115 = getelementptr inbounds %struct.acpi_interface, %struct.acpi_interface* %114, i32 0, i32 1
  store i32 %113, i32* %115, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %8, align 4
  br label %116

116:                                              ; preds = %161, %103
  %117 = load i32, i32* %8, align 4
  %118 = sext i32 %117 to i64
  %119 = load i64, i64* %7, align 8
  %120 = icmp ult i64 %118, %119
  br i1 %120, label %121, label %162

121:                                              ; preds = %116
  %122 = load i8*, i8** %6, align 8
  %123 = load i32, i32* %8, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds i8, i8* %122, i64 %124
  %126 = load i8, i8* %125, align 1
  %127 = call i64 @isspace(i8 signext %126)
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %137, label %129

129:                                              ; preds = %121
  %130 = load i8*, i8** %6, align 8
  %131 = load i32, i32* %8, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds i8, i8* %130, i64 %132
  %134 = load i8, i8* %133, align 1
  %135 = sext i8 %134 to i32
  %136 = icmp eq i32 %135, 0
  br i1 %136, label %137, label %140

137:                                              ; preds = %129, %121
  %138 = load i32, i32* %8, align 4
  %139 = add nsw i32 %138, 1
  store i32 %139, i32* %8, align 4
  br label %161

140:                                              ; preds = %129
  %141 = load i8*, i8** %6, align 8
  %142 = load i32, i32* %8, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds i8, i8* %141, i64 %143
  %145 = load %struct.acpi_interface*, %struct.acpi_interface** %5, align 8
  %146 = getelementptr inbounds %struct.acpi_interface, %struct.acpi_interface* %145, i32 0, i32 0
  %147 = load i8**, i8*** %146, align 8
  %148 = load i32, i32* %9, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds i8*, i8** %147, i64 %149
  store i8* %144, i8** %150, align 8
  %151 = load i8*, i8** %6, align 8
  %152 = load i32, i32* %8, align 4
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds i8, i8* %151, i64 %153
  %155 = call i32 @strlen(i8* %154)
  %156 = add nsw i32 %155, 1
  %157 = load i32, i32* %8, align 4
  %158 = add nsw i32 %157, %156
  store i32 %158, i32* %8, align 4
  %159 = load i32, i32* %9, align 4
  %160 = add nsw i32 %159, 1
  store i32 %160, i32* %9, align 4
  br label %161

161:                                              ; preds = %140, %137
  br label %116

162:                                              ; preds = %116
  %163 = load i32, i32* %9, align 4
  store i32 %163, i32* %3, align 4
  br label %164

164:                                              ; preds = %162, %99, %32
  %165 = load i32, i32* %3, align 4
  ret i32 %165
}

declare dso_local i64 @isspace(i8 signext) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i8* @strdup(i8*, i32) #1

declare dso_local i32 @free(i8*, i32) #1

declare dso_local i8** @malloc(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
