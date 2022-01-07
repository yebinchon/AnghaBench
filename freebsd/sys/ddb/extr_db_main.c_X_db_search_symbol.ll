; ModuleID = '/home/carl/AnghaBench/freebsd/sys/ddb/extr_db_main.c_X_db_search_symbol.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/ddb/extr_db_main.c_X_db_search_symbol.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i8*, i64, i32* }
%struct.TYPE_5__ = type { i64, i64, i64, i32 }

@SHN_UNDEF = common dso_local global i64 0, align 8
@STT_OBJECT = common dso_local global i64 0, align 8
@STT_FUNC = common dso_local global i64 0, align 8
@STT_NOTYPE = common dso_local global i64 0, align 8
@STB_LOCAL = common dso_local global i64 0, align 8
@DB_STGY_PROC = common dso_local global i64 0, align 8
@DB_STGY_ANY = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @X_db_search_symbol(%struct.TYPE_4__* %0, i64 %1, i64 %2, i64* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_4__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.TYPE_5__*, align 8
  %12 = alloca %struct.TYPE_5__*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i64* %3, i64** %9, align 8
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 2
  %17 = load i32*, i32** %16, align 8
  %18 = icmp eq i32* %17, null
  br i1 %18, label %19, label %30

19:                                               ; preds = %4
  %20 = load i64, i64* %7, align 8
  %21 = trunc i64 %20 to i32
  %22 = call i32 @linker_ddb_search_symbol(i32 %21, i64* %10, i64* %13)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %29, label %24

24:                                               ; preds = %19
  %25 = load i64, i64* %13, align 8
  %26 = load i64*, i64** %9, align 8
  store i64 %25, i64* %26, align 8
  %27 = load i64, i64* %10, align 8
  %28 = inttoptr i64 %27 to i32*
  store i32* %28, i32** %5, align 8
  br label %183

29:                                               ; preds = %19
  store i32* null, i32** %5, align 8
  br label %183

30:                                               ; preds = %4
  store i64 -1, i64* %13, align 8
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %12, align 8
  %31 = load i64, i64* %7, align 8
  %32 = call i64 @DB_STOFFS(i64 %31)
  store i64 %32, i64* %14, align 8
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = inttoptr i64 %35 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %36, %struct.TYPE_5__** %11, align 8
  br label %37

37:                                               ; preds = %168, %30
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %39 = bitcast %struct.TYPE_5__* %38 to i8*
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = load i8*, i8** %41, align 8
  %43 = icmp ult i8* %39, %42
  br i1 %43, label %44, label %171

44:                                               ; preds = %37
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = icmp eq i64 %47, 0
  br i1 %48, label %55, label %49

49:                                               ; preds = %44
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @SHN_UNDEF, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %55, label %56

55:                                               ; preds = %49, %44
  br label %168

56:                                               ; preds = %49
  %57 = load i64, i64* %14, align 8
  %58 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 2
  %60 = load i64, i64* %59, align 8
  %61 = icmp slt i64 %57, %60
  br i1 %61, label %62, label %63

62:                                               ; preds = %56
  br label %168

63:                                               ; preds = %56
  %64 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 3
  %66 = load i32, i32* %65, align 8
  %67 = call i64 @ELF_ST_TYPE(i32 %66)
  %68 = load i64, i64* @STT_OBJECT, align 8
  %69 = icmp ne i64 %67, %68
  br i1 %69, label %70, label %85

70:                                               ; preds = %63
  %71 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 3
  %73 = load i32, i32* %72, align 8
  %74 = call i64 @ELF_ST_TYPE(i32 %73)
  %75 = load i64, i64* @STT_FUNC, align 8
  %76 = icmp ne i64 %74, %75
  br i1 %76, label %77, label %85

77:                                               ; preds = %70
  %78 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i32 0, i32 3
  %80 = load i32, i32* %79, align 8
  %81 = call i64 @ELF_ST_TYPE(i32 %80)
  %82 = load i64, i64* @STT_NOTYPE, align 8
  %83 = icmp ne i64 %81, %82
  br i1 %83, label %84, label %85

84:                                               ; preds = %77
  br label %168

85:                                               ; preds = %77, %70, %63
  %86 = load i64, i64* %14, align 8
  %87 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %88 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %87, i32 0, i32 2
  %89 = load i64, i64* %88, align 8
  %90 = sub nsw i64 %86, %89
  %91 = load i64, i64* %13, align 8
  %92 = icmp ugt i64 %90, %91
  br i1 %92, label %93, label %94

93:                                               ; preds = %85
  br label %168

94:                                               ; preds = %85
  %95 = load i64, i64* %14, align 8
  %96 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %97 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %96, i32 0, i32 2
  %98 = load i64, i64* %97, align 8
  %99 = sub nsw i64 %95, %98
  %100 = load i64, i64* %13, align 8
  %101 = icmp ult i64 %99, %100
  br i1 %101, label %102, label %109

102:                                              ; preds = %94
  %103 = load i64, i64* %14, align 8
  %104 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %105 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %104, i32 0, i32 2
  %106 = load i64, i64* %105, align 8
  %107 = sub nsw i64 %103, %106
  store i64 %107, i64* %13, align 8
  %108 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  store %struct.TYPE_5__* %108, %struct.TYPE_5__** %12, align 8
  br label %132

109:                                              ; preds = %94
  %110 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %111 = icmp eq %struct.TYPE_5__* %110, null
  br i1 %111, label %112, label %114

112:                                              ; preds = %109
  %113 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  store %struct.TYPE_5__* %113, %struct.TYPE_5__** %12, align 8
  br label %131

114:                                              ; preds = %109
  %115 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %116 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %115, i32 0, i32 3
  %117 = load i32, i32* %116, align 8
  %118 = call i64 @ELF_ST_BIND(i32 %117)
  %119 = load i64, i64* @STB_LOCAL, align 8
  %120 = icmp eq i64 %118, %119
  br i1 %120, label %121, label %130

121:                                              ; preds = %114
  %122 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %123 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %122, i32 0, i32 3
  %124 = load i32, i32* %123, align 8
  %125 = call i64 @ELF_ST_BIND(i32 %124)
  %126 = load i64, i64* @STB_LOCAL, align 8
  %127 = icmp ne i64 %125, %126
  br i1 %127, label %128, label %130

128:                                              ; preds = %121
  %129 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  store %struct.TYPE_5__* %129, %struct.TYPE_5__** %12, align 8
  br label %130

130:                                              ; preds = %128, %121, %114
  br label %131

131:                                              ; preds = %130, %112
  br label %132

132:                                              ; preds = %131, %102
  %133 = load i64, i64* %13, align 8
  %134 = icmp eq i64 %133, 0
  br i1 %134, label %135, label %167

135:                                              ; preds = %132
  %136 = load i64, i64* %8, align 8
  %137 = load i64, i64* @DB_STGY_PROC, align 8
  %138 = icmp eq i64 %136, %137
  br i1 %138, label %139, label %154

139:                                              ; preds = %135
  %140 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %141 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %140, i32 0, i32 3
  %142 = load i32, i32* %141, align 8
  %143 = call i64 @ELF_ST_TYPE(i32 %142)
  %144 = load i64, i64* @STT_FUNC, align 8
  %145 = icmp eq i64 %143, %144
  br i1 %145, label %146, label %154

146:                                              ; preds = %139
  %147 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %148 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %147, i32 0, i32 3
  %149 = load i32, i32* %148, align 8
  %150 = call i64 @ELF_ST_BIND(i32 %149)
  %151 = load i64, i64* @STB_LOCAL, align 8
  %152 = icmp ne i64 %150, %151
  br i1 %152, label %153, label %154

153:                                              ; preds = %146
  br label %171

154:                                              ; preds = %146, %139, %135
  %155 = load i64, i64* %8, align 8
  %156 = load i64, i64* @DB_STGY_ANY, align 8
  %157 = icmp eq i64 %155, %156
  br i1 %157, label %158, label %166

158:                                              ; preds = %154
  %159 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %160 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %159, i32 0, i32 3
  %161 = load i32, i32* %160, align 8
  %162 = call i64 @ELF_ST_BIND(i32 %161)
  %163 = load i64, i64* @STB_LOCAL, align 8
  %164 = icmp ne i64 %162, %163
  br i1 %164, label %165, label %166

165:                                              ; preds = %158
  br label %171

166:                                              ; preds = %158, %154
  br label %167

167:                                              ; preds = %166, %132
  br label %168

168:                                              ; preds = %167, %93, %84, %62, %55
  %169 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %170 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %169, i32 1
  store %struct.TYPE_5__* %170, %struct.TYPE_5__** %11, align 8
  br label %37

171:                                              ; preds = %165, %153, %37
  %172 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %173 = icmp eq %struct.TYPE_5__* %172, null
  br i1 %173, label %174, label %176

174:                                              ; preds = %171
  %175 = load i64, i64* %7, align 8
  br label %178

176:                                              ; preds = %171
  %177 = load i64, i64* %13, align 8
  br label %178

178:                                              ; preds = %176, %174
  %179 = phi i64 [ %175, %174 ], [ %177, %176 ]
  %180 = load i64*, i64** %9, align 8
  store i64 %179, i64* %180, align 8
  %181 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %182 = bitcast %struct.TYPE_5__* %181 to i32*
  store i32* %182, i32** %5, align 8
  br label %183

183:                                              ; preds = %178, %29, %24
  %184 = load i32*, i32** %5, align 8
  ret i32* %184
}

declare dso_local i32 @linker_ddb_search_symbol(i32, i64*, i64*) #1

declare dso_local i64 @DB_STOFFS(i64) #1

declare dso_local i64 @ELF_ST_TYPE(i32) #1

declare dso_local i64 @ELF_ST_BIND(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
