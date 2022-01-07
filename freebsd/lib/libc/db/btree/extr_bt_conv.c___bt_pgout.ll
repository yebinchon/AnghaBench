; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/db/btree/extr_bt_conv.c___bt_pgout.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/db/btree/extr_bt_conv.c___bt_pgout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i32, i32, i32, i32, i32* }

@B_NEEDSWAP = common dso_local global i32 0, align 4
@P_META = common dso_local global i64 0, align 8
@P_TYPE = common dso_local global i32 0, align 4
@P_BINTERNAL = common dso_local global i32 0, align 4
@P_BIGKEY = common dso_local global i32 0, align 4
@P_BLEAF = common dso_local global i32 0, align 4
@P_BIGDATA = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @__bt_pgout(i8* %0, i64 %1, i8* %2) #0 {
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
  br label %184

18:                                               ; preds = %3
  %19 = load i64, i64* %5, align 8
  %20 = load i64, i64* @P_META, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %25

22:                                               ; preds = %18
  %23 = load i8*, i8** %6, align 8
  %24 = call i32 @mswap(i8* %23)
  br label %184

25:                                               ; preds = %18
  %26 = load i8*, i8** %6, align 8
  %27 = bitcast i8* %26 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %27, %struct.TYPE_5__** %7, align 8
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %29 = call i64 @NEXTINDEX(%struct.TYPE_5__* %28)
  store i64 %29, i64* %9, align 8
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @P_TYPE, align 4
  %34 = and i32 %32, %33
  %35 = load i32, i32* @P_BINTERNAL, align 4
  %36 = icmp eq i32 %34, %35
  br i1 %36, label %37, label %82

37:                                               ; preds = %25
  store i64 0, i64* %8, align 8
  br label %38

38:                                               ; preds = %78, %37
  %39 = load i64, i64* %8, align 8
  %40 = load i64, i64* %9, align 8
  %41 = icmp ult i64 %39, %40
  br i1 %41, label %42, label %81

42:                                               ; preds = %38
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %44 = load i64, i64* %8, align 8
  %45 = call i64 @GETBINTERNAL(%struct.TYPE_5__* %43, i64 %44)
  %46 = inttoptr i64 %45 to i8*
  store i8* %46, i8** %11, align 8
  %47 = load i8*, i8** %11, align 8
  %48 = call i32 @P_32_SWAP(i8* %47)
  %49 = load i8*, i8** %11, align 8
  %50 = getelementptr inbounds i8, i8* %49, i64 4
  store i8* %50, i8** %11, align 8
  %51 = load i8*, i8** %11, align 8
  %52 = call i32 @P_32_SWAP(i8* %51)
  %53 = load i8*, i8** %11, align 8
  %54 = getelementptr inbounds i8, i8* %53, i64 8
  store i8* %54, i8** %11, align 8
  %55 = load i8*, i8** %11, align 8
  %56 = bitcast i8* %55 to i32*
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @P_BIGKEY, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %70

61:                                               ; preds = %42
  %62 = load i8*, i8** %11, align 8
  %63 = getelementptr inbounds i8, i8* %62, i64 4
  store i8* %63, i8** %11, align 8
  %64 = load i8*, i8** %11, align 8
  %65 = call i32 @P_32_SWAP(i8* %64)
  %66 = load i8*, i8** %11, align 8
  %67 = getelementptr inbounds i8, i8* %66, i64 8
  store i8* %67, i8** %11, align 8
  %68 = load i8*, i8** %11, align 8
  %69 = call i32 @P_32_SWAP(i8* %68)
  br label %70

70:                                               ; preds = %61, %42
  %71 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 6
  %73 = load i32*, i32** %72, align 8
  %74 = load i64, i64* %8, align 8
  %75 = getelementptr inbounds i32, i32* %73, i64 %74
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @M_16_SWAP(i32 %76)
  br label %78

78:                                               ; preds = %70
  %79 = load i64, i64* %8, align 8
  %80 = add i64 %79, 1
  store i64 %80, i64* %8, align 8
  br label %38

81:                                               ; preds = %38
  br label %159

82:                                               ; preds = %25
  %83 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %84 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = load i32, i32* @P_TYPE, align 4
  %87 = and i32 %85, %86
  %88 = load i32, i32* @P_BLEAF, align 4
  %89 = icmp eq i32 %87, %88
  br i1 %89, label %90, label %158

90:                                               ; preds = %82
  store i64 0, i64* %8, align 8
  br label %91

91:                                               ; preds = %154, %90
  %92 = load i64, i64* %8, align 8
  %93 = load i64, i64* %9, align 8
  %94 = icmp ult i64 %92, %93
  br i1 %94, label %95, label %157

95:                                               ; preds = %91
  %96 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %97 = load i64, i64* %8, align 8
  %98 = call i64 @GETBLEAF(%struct.TYPE_5__* %96, i64 %97)
  %99 = inttoptr i64 %98 to i8*
  store i8* %99, i8** %11, align 8
  %100 = load i8*, i8** %11, align 8
  %101 = call i32 @P_32_SWAP(i8* %100)
  %102 = load i8*, i8** %11, align 8
  %103 = getelementptr inbounds i8, i8* %102, i64 4
  store i8* %103, i8** %11, align 8
  %104 = load i8*, i8** %11, align 8
  %105 = call i32 @P_32_SWAP(i8* %104)
  %106 = load i8*, i8** %11, align 8
  %107 = getelementptr inbounds i8, i8* %106, i64 4
  store i8* %107, i8** %11, align 8
  %108 = load i8*, i8** %11, align 8
  %109 = bitcast i8* %108 to i32*
  %110 = load i32, i32* %109, align 4
  store i32 %110, i32* %10, align 4
  %111 = load i32, i32* %10, align 4
  %112 = load i32, i32* @P_BIGKEY, align 4
  %113 = load i32, i32* @P_BIGDATA, align 4
  %114 = or i32 %112, %113
  %115 = and i32 %111, %114
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %146

117:                                              ; preds = %95
  %118 = load i8*, i8** %11, align 8
  %119 = getelementptr inbounds i8, i8* %118, i64 4
  store i8* %119, i8** %11, align 8
  %120 = load i32, i32* %10, align 4
  %121 = load i32, i32* @P_BIGKEY, align 4
  %122 = and i32 %120, %121
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %131

124:                                              ; preds = %117
  %125 = load i8*, i8** %11, align 8
  %126 = call i32 @P_32_SWAP(i8* %125)
  %127 = load i8*, i8** %11, align 8
  %128 = getelementptr inbounds i8, i8* %127, i64 8
  store i8* %128, i8** %11, align 8
  %129 = load i8*, i8** %11, align 8
  %130 = call i32 @P_32_SWAP(i8* %129)
  br label %131

131:                                              ; preds = %124, %117
  %132 = load i32, i32* %10, align 4
  %133 = load i32, i32* @P_BIGDATA, align 4
  %134 = and i32 %132, %133
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %145

136:                                              ; preds = %131
  %137 = load i8*, i8** %11, align 8
  %138 = getelementptr inbounds i8, i8* %137, i64 4
  store i8* %138, i8** %11, align 8
  %139 = load i8*, i8** %11, align 8
  %140 = call i32 @P_32_SWAP(i8* %139)
  %141 = load i8*, i8** %11, align 8
  %142 = getelementptr inbounds i8, i8* %141, i64 8
  store i8* %142, i8** %11, align 8
  %143 = load i8*, i8** %11, align 8
  %144 = call i32 @P_32_SWAP(i8* %143)
  br label %145

145:                                              ; preds = %136, %131
  br label %146

146:                                              ; preds = %145, %95
  %147 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %148 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %147, i32 0, i32 6
  %149 = load i32*, i32** %148, align 8
  %150 = load i64, i64* %8, align 8
  %151 = getelementptr inbounds i32, i32* %149, i64 %150
  %152 = load i32, i32* %151, align 4
  %153 = call i32 @M_16_SWAP(i32 %152)
  br label %154

154:                                              ; preds = %146
  %155 = load i64, i64* %8, align 8
  %156 = add i64 %155, 1
  store i64 %156, i64* %8, align 8
  br label %91

157:                                              ; preds = %91
  br label %158

158:                                              ; preds = %157, %82
  br label %159

159:                                              ; preds = %158, %81
  %160 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %161 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %160, i32 0, i32 1
  %162 = load i32, i32* %161, align 4
  %163 = call i32 @M_32_SWAP(i32 %162)
  %164 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %165 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %164, i32 0, i32 2
  %166 = load i32, i32* %165, align 8
  %167 = call i32 @M_32_SWAP(i32 %166)
  %168 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %169 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %168, i32 0, i32 3
  %170 = load i32, i32* %169, align 4
  %171 = call i32 @M_32_SWAP(i32 %170)
  %172 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %173 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 8
  %175 = call i32 @M_32_SWAP(i32 %174)
  %176 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %177 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %176, i32 0, i32 5
  %178 = load i32, i32* %177, align 4
  %179 = call i32 @M_16_SWAP(i32 %178)
  %180 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %181 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %180, i32 0, i32 4
  %182 = load i32, i32* %181, align 8
  %183 = call i32 @M_16_SWAP(i32 %182)
  br label %184

184:                                              ; preds = %159, %22, %17
  ret void
}

declare dso_local i32 @F_ISSET(i32*, i32) #1

declare dso_local i32 @mswap(i8*) #1

declare dso_local i64 @NEXTINDEX(%struct.TYPE_5__*) #1

declare dso_local i64 @GETBINTERNAL(%struct.TYPE_5__*, i64) #1

declare dso_local i32 @P_32_SWAP(i8*) #1

declare dso_local i32 @M_16_SWAP(i32) #1

declare dso_local i64 @GETBLEAF(%struct.TYPE_5__*, i64) #1

declare dso_local i32 @M_32_SWAP(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
