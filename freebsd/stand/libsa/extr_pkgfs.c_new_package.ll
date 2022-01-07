; ModuleID = '/home/carl/AnghaBench/freebsd/stand/libsa/extr_pkgfs.c_new_package.c'
source_filename = "/home/carl/AnghaBench/freebsd/stand/libsa/extr_pkgfs.c_new_package.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.package = type { i32, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@EFTYPE = common dso_local global i32 0, align 4
@Z_DEFLATED = common dso_local global i32 0, align 4
@RESERVED = common dso_local global i32 0, align 4
@EXTRA_FIELD = common dso_local global i32 0, align 4
@ORIG_NAME = common dso_local global i32 0, align 4
@COMMENT = common dso_local global i32 0, align 4
@HEAD_CRC = common dso_local global i32 0, align 4
@Z_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.package**)* @new_package to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @new_package(i32 %0, %struct.package** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.package**, align 8
  %6 = alloca %struct.package*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.package** %1, %struct.package*** %5, align 8
  %11 = call %struct.package* @malloc(i32 8)
  store %struct.package* %11, %struct.package** %6, align 8
  %12 = load %struct.package*, %struct.package** %6, align 8
  %13 = icmp eq %struct.package* %12, null
  br i1 %13, label %14, label %16

14:                                               ; preds = %2
  %15 = load i32, i32* @ENOMEM, align 4
  store i32 %15, i32* %3, align 4
  br label %156

16:                                               ; preds = %2
  %17 = load %struct.package*, %struct.package** %6, align 8
  %18 = call i32 @bzero(%struct.package* %17, i32 8)
  %19 = load i32, i32* %4, align 4
  %20 = load %struct.package*, %struct.package** %6, align 8
  %21 = getelementptr inbounds %struct.package, %struct.package* %20, i32 0, i32 0
  store i32 %19, i32* %21, align 4
  %22 = load i32, i32* @EFTYPE, align 4
  store i32 %22, i32* %10, align 4
  store i64 0, i64* %7, align 8
  %23 = load %struct.package*, %struct.package** %6, align 8
  %24 = call i32 @get_byte(%struct.package* %23, i64* %7)
  %25 = icmp ne i32 %24, 31
  br i1 %25, label %30, label %26

26:                                               ; preds = %16
  %27 = load %struct.package*, %struct.package** %6, align 8
  %28 = call i32 @get_byte(%struct.package* %27, i64* %7)
  %29 = icmp ne i32 %28, 139
  br i1 %29, label %30, label %31

30:                                               ; preds = %26, %16
  br label %152

31:                                               ; preds = %26
  %32 = load %struct.package*, %struct.package** %6, align 8
  %33 = call i32 @get_byte(%struct.package* %32, i64* %7)
  %34 = load i32, i32* @Z_DEFLATED, align 4
  %35 = icmp ne i32 %33, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %31
  br label %152

37:                                               ; preds = %31
  %38 = load %struct.package*, %struct.package** %6, align 8
  %39 = call i32 @get_byte(%struct.package* %38, i64* %7)
  store i32 %39, i32* %8, align 4
  %40 = load i32, i32* %8, align 4
  %41 = load i32, i32* @RESERVED, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %37
  br label %152

45:                                               ; preds = %37
  store i32 0, i32* %9, align 4
  br label %46

46:                                               ; preds = %55, %45
  %47 = load i32, i32* %9, align 4
  %48 = icmp slt i32 %47, 6
  br i1 %48, label %49, label %58

49:                                               ; preds = %46
  %50 = load %struct.package*, %struct.package** %6, align 8
  %51 = call i32 @get_byte(%struct.package* %50, i64* %7)
  %52 = icmp eq i32 %51, -1
  br i1 %52, label %53, label %54

53:                                               ; preds = %49
  br label %152

54:                                               ; preds = %49
  br label %55

55:                                               ; preds = %54
  %56 = load i32, i32* %9, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %9, align 4
  br label %46

58:                                               ; preds = %46
  %59 = load i32, i32* %8, align 4
  %60 = load i32, i32* @EXTRA_FIELD, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %83

63:                                               ; preds = %58
  %64 = load %struct.package*, %struct.package** %6, align 8
  %65 = call i32 @get_byte(%struct.package* %64, i64* %7)
  %66 = and i32 %65, 255
  %67 = load %struct.package*, %struct.package** %6, align 8
  %68 = call i32 @get_byte(%struct.package* %67, i64* %7)
  %69 = shl i32 %68, 8
  %70 = and i32 %69, 255
  %71 = or i32 %66, %70
  store i32 %71, i32* %9, align 4
  br label %72

72:                                               ; preds = %81, %63
  %73 = load i32, i32* %9, align 4
  %74 = add nsw i32 %73, -1
  store i32 %74, i32* %9, align 4
  %75 = icmp sgt i32 %73, 0
  br i1 %75, label %76, label %82

76:                                               ; preds = %72
  %77 = load %struct.package*, %struct.package** %6, align 8
  %78 = call i32 @get_byte(%struct.package* %77, i64* %7)
  %79 = icmp eq i32 %78, -1
  br i1 %79, label %80, label %81

80:                                               ; preds = %76
  br label %152

81:                                               ; preds = %76
  br label %72

82:                                               ; preds = %72
  br label %83

83:                                               ; preds = %82, %58
  %84 = load i32, i32* %8, align 4
  %85 = load i32, i32* @ORIG_NAME, align 4
  %86 = and i32 %84, %85
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %105

88:                                               ; preds = %83
  br label %89

89:                                               ; preds = %98, %88
  %90 = load %struct.package*, %struct.package** %6, align 8
  %91 = call i32 @get_byte(%struct.package* %90, i64* %7)
  store i32 %91, i32* %9, align 4
  br label %92

92:                                               ; preds = %89
  %93 = load i32, i32* %9, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %98

95:                                               ; preds = %92
  %96 = load i32, i32* %9, align 4
  %97 = icmp ne i32 %96, -1
  br label %98

98:                                               ; preds = %95, %92
  %99 = phi i1 [ false, %92 ], [ %97, %95 ]
  br i1 %99, label %89, label %100

100:                                              ; preds = %98
  %101 = load i32, i32* %9, align 4
  %102 = icmp eq i32 %101, -1
  br i1 %102, label %103, label %104

103:                                              ; preds = %100
  br label %152

104:                                              ; preds = %100
  br label %105

105:                                              ; preds = %104, %83
  %106 = load i32, i32* %8, align 4
  %107 = load i32, i32* @COMMENT, align 4
  %108 = and i32 %106, %107
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %125

110:                                              ; preds = %105
  br label %111

111:                                              ; preds = %110, %121
  %112 = load %struct.package*, %struct.package** %6, align 8
  %113 = call i32 @get_byte(%struct.package* %112, i64* %7)
  store i32 %113, i32* %9, align 4
  %114 = load i32, i32* %9, align 4
  %115 = icmp eq i32 %114, -1
  br i1 %115, label %116, label %117

116:                                              ; preds = %111
  br label %152

117:                                              ; preds = %111
  %118 = load i32, i32* %9, align 4
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %120, label %121

120:                                              ; preds = %117
  br label %124

121:                                              ; preds = %117
  %122 = load i32, i32* %9, align 4
  %123 = call i32 @putchar(i32 %122)
  br label %111

124:                                              ; preds = %120
  br label %125

125:                                              ; preds = %124, %105
  %126 = load i32, i32* %8, align 4
  %127 = load i32, i32* @HEAD_CRC, align 4
  %128 = and i32 %126, %127
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %141

130:                                              ; preds = %125
  %131 = load %struct.package*, %struct.package** %6, align 8
  %132 = call i32 @get_byte(%struct.package* %131, i64* %7)
  %133 = icmp eq i32 %132, -1
  br i1 %133, label %134, label %135

134:                                              ; preds = %130
  br label %152

135:                                              ; preds = %130
  %136 = load %struct.package*, %struct.package** %6, align 8
  %137 = call i32 @get_byte(%struct.package* %136, i64* %7)
  %138 = icmp eq i32 %137, -1
  br i1 %138, label %139, label %140

139:                                              ; preds = %135
  br label %152

140:                                              ; preds = %135
  br label %141

141:                                              ; preds = %140, %125
  %142 = load %struct.package*, %struct.package** %6, align 8
  %143 = getelementptr inbounds %struct.package, %struct.package* %142, i32 0, i32 1
  %144 = call i32 @inflateInit2(i32* %143, i32 -15)
  store i32 %144, i32* %10, align 4
  %145 = load i32, i32* %10, align 4
  %146 = load i32, i32* @Z_OK, align 4
  %147 = icmp ne i32 %145, %146
  br i1 %147, label %148, label %149

148:                                              ; preds = %141
  br label %152

149:                                              ; preds = %141
  %150 = load %struct.package*, %struct.package** %6, align 8
  %151 = load %struct.package**, %struct.package*** %5, align 8
  store %struct.package* %150, %struct.package** %151, align 8
  store i32 0, i32* %3, align 4
  br label %156

152:                                              ; preds = %148, %139, %134, %116, %103, %80, %53, %44, %36, %30
  %153 = load %struct.package*, %struct.package** %6, align 8
  %154 = call i32 @free(%struct.package* %153)
  %155 = load i32, i32* %10, align 4
  store i32 %155, i32* %3, align 4
  br label %156

156:                                              ; preds = %152, %149, %14
  %157 = load i32, i32* %3, align 4
  ret i32 %157
}

declare dso_local %struct.package* @malloc(i32) #1

declare dso_local i32 @bzero(%struct.package*, i32) #1

declare dso_local i32 @get_byte(%struct.package*, i64*) #1

declare dso_local i32 @putchar(i32) #1

declare dso_local i32 @inflateInit2(i32*, i32) #1

declare dso_local i32 @free(%struct.package*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
