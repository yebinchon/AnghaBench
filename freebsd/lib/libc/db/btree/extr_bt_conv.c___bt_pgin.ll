; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/db/btree/extr_bt_conv.c___bt_pgin.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/db/btree/extr_bt_conv.c___bt_pgin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i32, i32, i32*, i32, i32 }

@B_NEEDSWAP = common dso_local global i32 0, align 4
@P_META = common dso_local global i64 0, align 8
@P_TYPE = common dso_local global i32 0, align 4
@P_BINTERNAL = common dso_local global i32 0, align 4
@P_BIGKEY = common dso_local global i32 0, align 4
@P_BLEAF = common dso_local global i32 0, align 4
@P_BIGDATA = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @__bt_pgin(i8* %0, i64 %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.TYPE_5__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  store i8* %2, i8** %6, align 8
  %12 = load i8*, i8** %4, align 8
  %13 = bitcast i8* %12 to i32*
  %14 = load i32, i32* @B_NEEDSWAP, align 4
  %15 = call i32 @F_ISSET(i32* %13, i32 %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %3
  br label %183

18:                                               ; preds = %3
  %19 = load i64, i64* %5, align 8
  %20 = load i64, i64* @P_META, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %25

22:                                               ; preds = %18
  %23 = load i8*, i8** %6, align 8
  %24 = call i32 @mswap(i8* %23)
  br label %183

25:                                               ; preds = %18
  %26 = load i8*, i8** %6, align 8
  %27 = bitcast i8* %26 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %27, %struct.TYPE_5__** %7, align 8
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @M_32_SWAP(i32 %30)
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @M_32_SWAP(i32 %34)
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @M_32_SWAP(i32 %38)
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 3
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @M_32_SWAP(i32 %42)
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 6
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @M_16_SWAP(i32 %46)
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 5
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @M_16_SWAP(i32 %50)
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %53 = call i64 @NEXTINDEX(%struct.TYPE_5__* %52)
  store i64 %53, i64* %9, align 8
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 3
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @P_TYPE, align 4
  %58 = and i32 %56, %57
  %59 = load i32, i32* @P_BINTERNAL, align 4
  %60 = icmp eq i32 %58, %59
  br i1 %60, label %61, label %106

61:                                               ; preds = %25
  store i64 0, i64* %8, align 8
  br label %62

62:                                               ; preds = %102, %61
  %63 = load i64, i64* %8, align 8
  %64 = load i64, i64* %9, align 8
  %65 = icmp ult i64 %63, %64
  br i1 %65, label %66, label %105

66:                                               ; preds = %62
  %67 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 4
  %69 = load i32*, i32** %68, align 8
  %70 = load i64, i64* %8, align 8
  %71 = getelementptr inbounds i32, i32* %69, i64 %70
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @M_16_SWAP(i32 %72)
  %74 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %75 = load i64, i64* %8, align 8
  %76 = call i64 @GETBINTERNAL(%struct.TYPE_5__* %74, i64 %75)
  %77 = inttoptr i64 %76 to i8*
  store i8* %77, i8** %11, align 8
  %78 = load i8*, i8** %11, align 8
  %79 = call i32 @P_32_SWAP(i8* %78)
  %80 = load i8*, i8** %11, align 8
  %81 = getelementptr inbounds i8, i8* %80, i64 4
  store i8* %81, i8** %11, align 8
  %82 = load i8*, i8** %11, align 8
  %83 = call i32 @P_32_SWAP(i8* %82)
  %84 = load i8*, i8** %11, align 8
  %85 = getelementptr inbounds i8, i8* %84, i64 8
  store i8* %85, i8** %11, align 8
  %86 = load i8*, i8** %11, align 8
  %87 = bitcast i8* %86 to i32*
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* @P_BIGKEY, align 4
  %90 = and i32 %88, %89
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %101

92:                                               ; preds = %66
  %93 = load i8*, i8** %11, align 8
  %94 = getelementptr inbounds i8, i8* %93, i64 4
  store i8* %94, i8** %11, align 8
  %95 = load i8*, i8** %11, align 8
  %96 = call i32 @P_32_SWAP(i8* %95)
  %97 = load i8*, i8** %11, align 8
  %98 = getelementptr inbounds i8, i8* %97, i64 8
  store i8* %98, i8** %11, align 8
  %99 = load i8*, i8** %11, align 8
  %100 = call i32 @P_32_SWAP(i8* %99)
  br label %101

101:                                              ; preds = %92, %66
  br label %102

102:                                              ; preds = %101
  %103 = load i64, i64* %8, align 8
  %104 = add i64 %103, 1
  store i64 %104, i64* %8, align 8
  br label %62

105:                                              ; preds = %62
  br label %183

106:                                              ; preds = %25
  %107 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %108 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %107, i32 0, i32 3
  %109 = load i32, i32* %108, align 4
  %110 = load i32, i32* @P_TYPE, align 4
  %111 = and i32 %109, %110
  %112 = load i32, i32* @P_BLEAF, align 4
  %113 = icmp eq i32 %111, %112
  br i1 %113, label %114, label %182

114:                                              ; preds = %106
  store i64 0, i64* %8, align 8
  br label %115

115:                                              ; preds = %178, %114
  %116 = load i64, i64* %8, align 8
  %117 = load i64, i64* %9, align 8
  %118 = icmp ult i64 %116, %117
  br i1 %118, label %119, label %181

119:                                              ; preds = %115
  %120 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %121 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %120, i32 0, i32 4
  %122 = load i32*, i32** %121, align 8
  %123 = load i64, i64* %8, align 8
  %124 = getelementptr inbounds i32, i32* %122, i64 %123
  %125 = load i32, i32* %124, align 4
  %126 = call i32 @M_16_SWAP(i32 %125)
  %127 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %128 = load i64, i64* %8, align 8
  %129 = call i64 @GETBLEAF(%struct.TYPE_5__* %127, i64 %128)
  %130 = inttoptr i64 %129 to i8*
  store i8* %130, i8** %11, align 8
  %131 = load i8*, i8** %11, align 8
  %132 = call i32 @P_32_SWAP(i8* %131)
  %133 = load i8*, i8** %11, align 8
  %134 = getelementptr inbounds i8, i8* %133, i64 4
  store i8* %134, i8** %11, align 8
  %135 = load i8*, i8** %11, align 8
  %136 = call i32 @P_32_SWAP(i8* %135)
  %137 = load i8*, i8** %11, align 8
  %138 = getelementptr inbounds i8, i8* %137, i64 4
  store i8* %138, i8** %11, align 8
  %139 = load i8*, i8** %11, align 8
  %140 = bitcast i8* %139 to i32*
  %141 = load i32, i32* %140, align 4
  store i32 %141, i32* %10, align 4
  %142 = load i32, i32* %10, align 4
  %143 = load i32, i32* @P_BIGKEY, align 4
  %144 = load i32, i32* @P_BIGDATA, align 4
  %145 = or i32 %143, %144
  %146 = and i32 %142, %145
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %177

148:                                              ; preds = %119
  %149 = load i8*, i8** %11, align 8
  %150 = getelementptr inbounds i8, i8* %149, i64 4
  store i8* %150, i8** %11, align 8
  %151 = load i32, i32* %10, align 4
  %152 = load i32, i32* @P_BIGKEY, align 4
  %153 = and i32 %151, %152
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %162

155:                                              ; preds = %148
  %156 = load i8*, i8** %11, align 8
  %157 = call i32 @P_32_SWAP(i8* %156)
  %158 = load i8*, i8** %11, align 8
  %159 = getelementptr inbounds i8, i8* %158, i64 8
  store i8* %159, i8** %11, align 8
  %160 = load i8*, i8** %11, align 8
  %161 = call i32 @P_32_SWAP(i8* %160)
  br label %162

162:                                              ; preds = %155, %148
  %163 = load i32, i32* %10, align 4
  %164 = load i32, i32* @P_BIGDATA, align 4
  %165 = and i32 %163, %164
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %167, label %176

167:                                              ; preds = %162
  %168 = load i8*, i8** %11, align 8
  %169 = getelementptr inbounds i8, i8* %168, i64 4
  store i8* %169, i8** %11, align 8
  %170 = load i8*, i8** %11, align 8
  %171 = call i32 @P_32_SWAP(i8* %170)
  %172 = load i8*, i8** %11, align 8
  %173 = getelementptr inbounds i8, i8* %172, i64 8
  store i8* %173, i8** %11, align 8
  %174 = load i8*, i8** %11, align 8
  %175 = call i32 @P_32_SWAP(i8* %174)
  br label %176

176:                                              ; preds = %167, %162
  br label %177

177:                                              ; preds = %176, %119
  br label %178

178:                                              ; preds = %177
  %179 = load i64, i64* %8, align 8
  %180 = add i64 %179, 1
  store i64 %180, i64* %8, align 8
  br label %115

181:                                              ; preds = %115
  br label %182

182:                                              ; preds = %181, %106
  br label %183

183:                                              ; preds = %17, %22, %182, %105
  ret void
}

declare dso_local i32 @F_ISSET(i32*, i32) #1

declare dso_local i32 @mswap(i8*) #1

declare dso_local i32 @M_32_SWAP(i32) #1

declare dso_local i32 @M_16_SWAP(i32) #1

declare dso_local i64 @NEXTINDEX(%struct.TYPE_5__*) #1

declare dso_local i64 @GETBINTERNAL(%struct.TYPE_5__*, i64) #1

declare dso_local i32 @P_32_SWAP(i8*) #1

declare dso_local i64 @GETBLEAF(%struct.TYPE_5__*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
