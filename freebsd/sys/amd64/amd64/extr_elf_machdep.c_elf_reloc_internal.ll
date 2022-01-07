; ModuleID = '/home/carl/AnghaBench/freebsd/sys/amd64/amd64/extr_elf_machdep.c_elf_reloc_internal.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/amd64/amd64/extr_elf_machdep.c_elf_reloc_internal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i64 }
%struct.TYPE_3__ = type { i32, i64, i64 }

@.str = private unnamed_addr constant [23 x i8] c"unknown reloc type %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"kldload: unexpected R_COPY relocation\0A\00", align 1
@.str.2 = private unnamed_addr constant [41 x i8] c"kldload: unexpected relocation type %ld\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i64, i8*, i32, i32 (i32, i32, i32, i64*)*)* @elf_reloc_internal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @elf_reloc_internal(i32 %0, i64 %1, i8* %2, i32 %3, i32 (i32, i32, i32, i64*)* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32 (i32, i32, i32, i64*)*, align 8
  %12 = alloca i64*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca %struct.TYPE_4__*, align 8
  %21 = alloca %struct.TYPE_3__*, align 8
  %22 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store i64 %1, i64* %8, align 8
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 (i32, i32, i32, i64*)* %4, i32 (i32, i32, i32, i64*)** %11, align 8
  %23 = load i32, i32* %10, align 4
  switch i32 %23, label %69 [
    i32 139, label %24
    i32 138, label %49
  ]

24:                                               ; preds = %5
  %25 = load i8*, i8** %9, align 8
  %26 = bitcast i8* %25 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %26, %struct.TYPE_4__** %20, align 8
  %27 = load i64, i64* %8, align 8
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = add nsw i64 %27, %30
  %32 = inttoptr i64 %31 to i64*
  store i64* %32, i64** %12, align 8
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @ELF_R_TYPE(i32 %35)
  store i32 %36, i32* %18, align 4
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @ELF_R_SYM(i32 %39)
  store i32 %40, i32* %19, align 4
  %41 = load i32, i32* %18, align 4
  switch i32 %41, label %45 [
    i32 130, label %42
    i32 137, label %42
    i32 129, label %42
  ]

42:                                               ; preds = %24, %24, %24
  %43 = load i64*, i64** %12, align 8
  %44 = load i64, i64* %43, align 8
  store i64 %44, i64* %17, align 8
  br label %48

45:                                               ; preds = %24
  %46 = load i64*, i64** %12, align 8
  %47 = load i64, i64* %46, align 8
  store i64 %47, i64* %17, align 8
  br label %48

48:                                               ; preds = %45, %42
  br label %72

49:                                               ; preds = %5
  %50 = load i8*, i8** %9, align 8
  %51 = bitcast i8* %50 to %struct.TYPE_3__*
  store %struct.TYPE_3__* %51, %struct.TYPE_3__** %21, align 8
  %52 = load i64, i64* %8, align 8
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %21, align 8
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 2
  %55 = load i64, i64* %54, align 8
  %56 = add nsw i64 %52, %55
  %57 = inttoptr i64 %56 to i64*
  store i64* %57, i64** %12, align 8
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** %21, align 8
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  store i64 %60, i64* %17, align 8
  %61 = load %struct.TYPE_3__*, %struct.TYPE_3__** %21, align 8
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = call i32 @ELF_R_TYPE(i32 %63)
  store i32 %64, i32* %18, align 4
  %65 = load %struct.TYPE_3__*, %struct.TYPE_3__** %21, align 8
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = call i32 @ELF_R_SYM(i32 %67)
  store i32 %68, i32* %19, align 4
  br label %72

69:                                               ; preds = %5
  %70 = load i32, i32* %10, align 4
  %71 = call i32 @panic(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %70)
  br label %72

72:                                               ; preds = %69, %49, %48
  %73 = load i32, i32* %18, align 4
  switch i32 %73, label %189 [
    i32 131, label %74
    i32 136, label %75
    i32 130, label %95
    i32 129, label %95
    i32 137, label %119
    i32 135, label %140
    i32 134, label %142
    i32 132, label %142
    i32 128, label %159
    i32 133, label %174
  ]

74:                                               ; preds = %72
  br label %192

75:                                               ; preds = %72
  %76 = load i32 (i32, i32, i32, i64*)*, i32 (i32, i32, i32, i64*)** %11, align 8
  %77 = load i32, i32* %7, align 4
  %78 = load i32, i32* %19, align 4
  %79 = call i32 %76(i32 %77, i32 %78, i32 1, i64* %16)
  store i32 %79, i32* %22, align 4
  %80 = load i64, i64* %16, align 8
  %81 = load i64, i64* %17, align 8
  %82 = add nsw i64 %80, %81
  store i64 %82, i64* %13, align 8
  %83 = load i32, i32* %22, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %86

85:                                               ; preds = %75
  store i32 -1, i32* %6, align 4
  br label %193

86:                                               ; preds = %75
  %87 = load i64*, i64** %12, align 8
  %88 = load i64, i64* %87, align 8
  %89 = load i64, i64* %13, align 8
  %90 = icmp ne i64 %88, %89
  br i1 %90, label %91, label %94

91:                                               ; preds = %86
  %92 = load i64, i64* %13, align 8
  %93 = load i64*, i64** %12, align 8
  store i64 %92, i64* %93, align 8
  br label %94

94:                                               ; preds = %91, %86
  br label %192

95:                                               ; preds = %72, %72
  %96 = load i32 (i32, i32, i32, i64*)*, i32 (i32, i32, i32, i64*)** %11, align 8
  %97 = load i32, i32* %7, align 4
  %98 = load i32, i32* %19, align 4
  %99 = call i32 %96(i32 %97, i32 %98, i32 1, i64* %16)
  store i32 %99, i32* %22, align 4
  %100 = load i64*, i64** %12, align 8
  store i64* %100, i64** %14, align 8
  %101 = load i64, i64* %16, align 8
  %102 = load i64, i64* %17, align 8
  %103 = add nsw i64 %101, %102
  %104 = load i64*, i64** %12, align 8
  %105 = ptrtoint i64* %104 to i64
  %106 = sub nsw i64 %103, %105
  store i64 %106, i64* %15, align 8
  %107 = load i32, i32* %22, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %110

109:                                              ; preds = %95
  store i32 -1, i32* %6, align 4
  br label %193

110:                                              ; preds = %95
  %111 = load i64*, i64** %14, align 8
  %112 = load i64, i64* %111, align 8
  %113 = load i64, i64* %15, align 8
  %114 = icmp ne i64 %112, %113
  br i1 %114, label %115, label %118

115:                                              ; preds = %110
  %116 = load i64, i64* %15, align 8
  %117 = load i64*, i64** %14, align 8
  store i64 %116, i64* %117, align 8
  br label %118

118:                                              ; preds = %115, %110
  br label %192

119:                                              ; preds = %72
  %120 = load i32 (i32, i32, i32, i64*)*, i32 (i32, i32, i32, i64*)** %11, align 8
  %121 = load i32, i32* %7, align 4
  %122 = load i32, i32* %19, align 4
  %123 = call i32 %120(i32 %121, i32 %122, i32 1, i64* %16)
  store i32 %123, i32* %22, align 4
  %124 = load i64, i64* %16, align 8
  %125 = load i64, i64* %17, align 8
  %126 = add nsw i64 %124, %125
  store i64 %126, i64* %15, align 8
  %127 = load i64*, i64** %12, align 8
  store i64* %127, i64** %14, align 8
  %128 = load i32, i32* %22, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %131

130:                                              ; preds = %119
  store i32 -1, i32* %6, align 4
  br label %193

131:                                              ; preds = %119
  %132 = load i64*, i64** %14, align 8
  %133 = load i64, i64* %132, align 8
  %134 = load i64, i64* %15, align 8
  %135 = icmp ne i64 %133, %134
  br i1 %135, label %136, label %139

136:                                              ; preds = %131
  %137 = load i64, i64* %15, align 8
  %138 = load i64*, i64** %14, align 8
  store i64 %137, i64* %138, align 8
  br label %139

139:                                              ; preds = %136, %131
  br label %192

140:                                              ; preds = %72
  %141 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %6, align 4
  br label %193

142:                                              ; preds = %72, %72
  %143 = load i32 (i32, i32, i32, i64*)*, i32 (i32, i32, i32, i64*)** %11, align 8
  %144 = load i32, i32* %7, align 4
  %145 = load i32, i32* %19, align 4
  %146 = call i32 %143(i32 %144, i32 %145, i32 1, i64* %16)
  store i32 %146, i32* %22, align 4
  %147 = load i32, i32* %22, align 4
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %150

149:                                              ; preds = %142
  store i32 -1, i32* %6, align 4
  br label %193

150:                                              ; preds = %142
  %151 = load i64*, i64** %12, align 8
  %152 = load i64, i64* %151, align 8
  %153 = load i64, i64* %16, align 8
  %154 = icmp ne i64 %152, %153
  br i1 %154, label %155, label %158

155:                                              ; preds = %150
  %156 = load i64, i64* %16, align 8
  %157 = load i64*, i64** %12, align 8
  store i64 %156, i64* %157, align 8
  br label %158

158:                                              ; preds = %155, %150
  br label %192

159:                                              ; preds = %72
  %160 = load i32, i32* %7, align 4
  %161 = load i64, i64* %8, align 8
  %162 = load i64, i64* %17, align 8
  %163 = add nsw i64 %161, %162
  %164 = call i64 @elf_relocaddr(i32 %160, i64 %163)
  store i64 %164, i64* %16, align 8
  %165 = load i64, i64* %16, align 8
  store i64 %165, i64* %13, align 8
  %166 = load i64*, i64** %12, align 8
  %167 = load i64, i64* %166, align 8
  %168 = load i64, i64* %13, align 8
  %169 = icmp ne i64 %167, %168
  br i1 %169, label %170, label %173

170:                                              ; preds = %159
  %171 = load i64, i64* %13, align 8
  %172 = load i64*, i64** %12, align 8
  store i64 %171, i64* %172, align 8
  br label %173

173:                                              ; preds = %170, %159
  br label %192

174:                                              ; preds = %72
  %175 = load i64, i64* %8, align 8
  %176 = load i64, i64* %17, align 8
  %177 = add nsw i64 %175, %176
  store i64 %177, i64* %16, align 8
  %178 = load i64, i64* %16, align 8
  %179 = inttoptr i64 %178 to i64 ()*
  %180 = call i64 %179()
  store i64 %180, i64* %13, align 8
  %181 = load i64*, i64** %12, align 8
  %182 = load i64, i64* %181, align 8
  %183 = load i64, i64* %13, align 8
  %184 = icmp ne i64 %182, %183
  br i1 %184, label %185, label %188

185:                                              ; preds = %174
  %186 = load i64, i64* %13, align 8
  %187 = load i64*, i64** %12, align 8
  store i64 %186, i64* %187, align 8
  br label %188

188:                                              ; preds = %185, %174
  br label %192

189:                                              ; preds = %72
  %190 = load i32, i32* %18, align 4
  %191 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0), i32 %190)
  store i32 -1, i32* %6, align 4
  br label %193

192:                                              ; preds = %188, %173, %158, %139, %118, %94, %74
  store i32 0, i32* %6, align 4
  br label %193

193:                                              ; preds = %192, %189, %149, %140, %130, %109, %85
  %194 = load i32, i32* %6, align 4
  ret i32 %194
}

declare dso_local i32 @ELF_R_TYPE(i32) #1

declare dso_local i32 @ELF_R_SYM(i32) #1

declare dso_local i32 @panic(i8*, i32) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i64 @elf_relocaddr(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
