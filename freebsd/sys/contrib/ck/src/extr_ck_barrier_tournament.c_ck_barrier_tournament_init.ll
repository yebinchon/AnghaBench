; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ck/src/extr_ck_barrier_tournament.c_ck_barrier_tournament_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ck/src/extr_ck_barrier_tournament.c_ck_barrier_tournament_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ck_barrier_tournament = type { i32, i32, i32 }
%struct.ck_barrier_tournament_round = type { i64, i64, i64* }

@CK_BARRIER_TOURNAMENT_DROPOUT = common dso_local global i64 0, align 8
@CK_BARRIER_TOURNAMENT_WINNER = common dso_local global i64 0, align 8
@CK_BARRIER_TOURNAMENT_BYE = common dso_local global i64 0, align 8
@CK_BARRIER_TOURNAMENT_LOSER = common dso_local global i64 0, align 8
@CK_BARRIER_TOURNAMENT_CHAMPION = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ck_barrier_tournament_init(%struct.ck_barrier_tournament* %0, %struct.ck_barrier_tournament_round** %1, i32 %2) #0 {
  %4 = alloca %struct.ck_barrier_tournament*, align 8
  %5 = alloca %struct.ck_barrier_tournament_round**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.ck_barrier_tournament* %0, %struct.ck_barrier_tournament** %4, align 8
  store %struct.ck_barrier_tournament_round** %1, %struct.ck_barrier_tournament_round*** %5, align 8
  store i32 %2, i32* %6, align 4
  %13 = load %struct.ck_barrier_tournament*, %struct.ck_barrier_tournament** %4, align 8
  %14 = getelementptr inbounds %struct.ck_barrier_tournament, %struct.ck_barrier_tournament* %13, i32 0, i32 2
  %15 = call i32 @ck_pr_store_uint(i32* %14, i32 0)
  %16 = load i32, i32* %6, align 4
  %17 = call i32 @ck_barrier_tournament_size(i32 %16)
  store i32 %17, i32* %9, align 4
  %18 = load %struct.ck_barrier_tournament*, %struct.ck_barrier_tournament** %4, align 8
  %19 = getelementptr inbounds %struct.ck_barrier_tournament, %struct.ck_barrier_tournament* %18, i32 0, i32 0
  store i32 %17, i32* %19, align 4
  store i32 0, i32* %7, align 4
  br label %20

20:                                               ; preds = %224, %3
  %21 = load i32, i32* %7, align 4
  %22 = load i32, i32* %6, align 4
  %23 = icmp ult i32 %21, %22
  br i1 %23, label %24, label %227

24:                                               ; preds = %20
  %25 = load %struct.ck_barrier_tournament_round**, %struct.ck_barrier_tournament_round*** %5, align 8
  %26 = load i32, i32* %7, align 4
  %27 = zext i32 %26 to i64
  %28 = getelementptr inbounds %struct.ck_barrier_tournament_round*, %struct.ck_barrier_tournament_round** %25, i64 %27
  %29 = load %struct.ck_barrier_tournament_round*, %struct.ck_barrier_tournament_round** %28, align 8
  %30 = getelementptr inbounds %struct.ck_barrier_tournament_round, %struct.ck_barrier_tournament_round* %29, i64 0
  %31 = getelementptr inbounds %struct.ck_barrier_tournament_round, %struct.ck_barrier_tournament_round* %30, i32 0, i32 1
  store i64 0, i64* %31, align 8
  %32 = load i64, i64* @CK_BARRIER_TOURNAMENT_DROPOUT, align 8
  %33 = load %struct.ck_barrier_tournament_round**, %struct.ck_barrier_tournament_round*** %5, align 8
  %34 = load i32, i32* %7, align 4
  %35 = zext i32 %34 to i64
  %36 = getelementptr inbounds %struct.ck_barrier_tournament_round*, %struct.ck_barrier_tournament_round** %33, i64 %35
  %37 = load %struct.ck_barrier_tournament_round*, %struct.ck_barrier_tournament_round** %36, align 8
  %38 = getelementptr inbounds %struct.ck_barrier_tournament_round, %struct.ck_barrier_tournament_round* %37, i64 0
  %39 = getelementptr inbounds %struct.ck_barrier_tournament_round, %struct.ck_barrier_tournament_round* %38, i32 0, i32 0
  store i64 %32, i64* %39, align 8
  store i32 1, i32* %8, align 4
  store i32 2, i32* %10, align 4
  store i32 1, i32* %11, align 4
  br label %40

40:                                               ; preds = %217, %24
  %41 = load i32, i32* %8, align 4
  %42 = load i32, i32* %9, align 4
  %43 = icmp ult i32 %41, %42
  br i1 %43, label %44, label %223

44:                                               ; preds = %40
  %45 = load %struct.ck_barrier_tournament_round**, %struct.ck_barrier_tournament_round*** %5, align 8
  %46 = load i32, i32* %7, align 4
  %47 = zext i32 %46 to i64
  %48 = getelementptr inbounds %struct.ck_barrier_tournament_round*, %struct.ck_barrier_tournament_round** %45, i64 %47
  %49 = load %struct.ck_barrier_tournament_round*, %struct.ck_barrier_tournament_round** %48, align 8
  %50 = load i32, i32* %8, align 4
  %51 = zext i32 %50 to i64
  %52 = getelementptr inbounds %struct.ck_barrier_tournament_round, %struct.ck_barrier_tournament_round* %49, i64 %51
  %53 = getelementptr inbounds %struct.ck_barrier_tournament_round, %struct.ck_barrier_tournament_round* %52, i32 0, i32 1
  store i64 0, i64* %53, align 8
  %54 = load i32, i32* %7, align 4
  %55 = load i32, i32* %10, align 4
  %56 = sub i32 %55, 1
  %57 = and i32 %54, %56
  store i32 %57, i32* %12, align 4
  %58 = load i32, i32* %12, align 4
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %100

60:                                               ; preds = %44
  %61 = load i32, i32* %7, align 4
  %62 = load i32, i32* %11, align 4
  %63 = add i32 %61, %62
  %64 = load i32, i32* %6, align 4
  %65 = icmp ult i32 %63, %64
  br i1 %65, label %66, label %81

66:                                               ; preds = %60
  %67 = load i32, i32* %10, align 4
  %68 = load i32, i32* %6, align 4
  %69 = icmp ult i32 %67, %68
  br i1 %69, label %70, label %81

70:                                               ; preds = %66
  %71 = load i64, i64* @CK_BARRIER_TOURNAMENT_WINNER, align 8
  %72 = load %struct.ck_barrier_tournament_round**, %struct.ck_barrier_tournament_round*** %5, align 8
  %73 = load i32, i32* %7, align 4
  %74 = zext i32 %73 to i64
  %75 = getelementptr inbounds %struct.ck_barrier_tournament_round*, %struct.ck_barrier_tournament_round** %72, i64 %74
  %76 = load %struct.ck_barrier_tournament_round*, %struct.ck_barrier_tournament_round** %75, align 8
  %77 = load i32, i32* %8, align 4
  %78 = zext i32 %77 to i64
  %79 = getelementptr inbounds %struct.ck_barrier_tournament_round, %struct.ck_barrier_tournament_round* %76, i64 %78
  %80 = getelementptr inbounds %struct.ck_barrier_tournament_round, %struct.ck_barrier_tournament_round* %79, i32 0, i32 0
  store i64 %71, i64* %80, align 8
  br label %99

81:                                               ; preds = %66, %60
  %82 = load i32, i32* %7, align 4
  %83 = load i32, i32* %11, align 4
  %84 = add i32 %82, %83
  %85 = load i32, i32* %6, align 4
  %86 = icmp uge i32 %84, %85
  br i1 %86, label %87, label %98

87:                                               ; preds = %81
  %88 = load i64, i64* @CK_BARRIER_TOURNAMENT_BYE, align 8
  %89 = load %struct.ck_barrier_tournament_round**, %struct.ck_barrier_tournament_round*** %5, align 8
  %90 = load i32, i32* %7, align 4
  %91 = zext i32 %90 to i64
  %92 = getelementptr inbounds %struct.ck_barrier_tournament_round*, %struct.ck_barrier_tournament_round** %89, i64 %91
  %93 = load %struct.ck_barrier_tournament_round*, %struct.ck_barrier_tournament_round** %92, align 8
  %94 = load i32, i32* %8, align 4
  %95 = zext i32 %94 to i64
  %96 = getelementptr inbounds %struct.ck_barrier_tournament_round, %struct.ck_barrier_tournament_round* %93, i64 %95
  %97 = getelementptr inbounds %struct.ck_barrier_tournament_round, %struct.ck_barrier_tournament_round* %96, i32 0, i32 0
  store i64 %88, i64* %97, align 8
  br label %98

98:                                               ; preds = %87, %81
  br label %99

99:                                               ; preds = %98, %70
  br label %100

100:                                              ; preds = %99, %44
  %101 = load i32, i32* %12, align 4
  %102 = load i32, i32* %11, align 4
  %103 = icmp eq i32 %101, %102
  br i1 %103, label %104, label %115

104:                                              ; preds = %100
  %105 = load i64, i64* @CK_BARRIER_TOURNAMENT_LOSER, align 8
  %106 = load %struct.ck_barrier_tournament_round**, %struct.ck_barrier_tournament_round*** %5, align 8
  %107 = load i32, i32* %7, align 4
  %108 = zext i32 %107 to i64
  %109 = getelementptr inbounds %struct.ck_barrier_tournament_round*, %struct.ck_barrier_tournament_round** %106, i64 %108
  %110 = load %struct.ck_barrier_tournament_round*, %struct.ck_barrier_tournament_round** %109, align 8
  %111 = load i32, i32* %8, align 4
  %112 = zext i32 %111 to i64
  %113 = getelementptr inbounds %struct.ck_barrier_tournament_round, %struct.ck_barrier_tournament_round* %110, i64 %112
  %114 = getelementptr inbounds %struct.ck_barrier_tournament_round, %struct.ck_barrier_tournament_round* %113, i32 0, i32 0
  store i64 %105, i64* %114, align 8
  br label %134

115:                                              ; preds = %100
  %116 = load i32, i32* %7, align 4
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %118, label %133

118:                                              ; preds = %115
  %119 = load i32, i32* %10, align 4
  %120 = load i32, i32* %6, align 4
  %121 = icmp uge i32 %119, %120
  br i1 %121, label %122, label %133

122:                                              ; preds = %118
  %123 = load i64, i64* @CK_BARRIER_TOURNAMENT_CHAMPION, align 8
  %124 = load %struct.ck_barrier_tournament_round**, %struct.ck_barrier_tournament_round*** %5, align 8
  %125 = load i32, i32* %7, align 4
  %126 = zext i32 %125 to i64
  %127 = getelementptr inbounds %struct.ck_barrier_tournament_round*, %struct.ck_barrier_tournament_round** %124, i64 %126
  %128 = load %struct.ck_barrier_tournament_round*, %struct.ck_barrier_tournament_round** %127, align 8
  %129 = load i32, i32* %8, align 4
  %130 = zext i32 %129 to i64
  %131 = getelementptr inbounds %struct.ck_barrier_tournament_round, %struct.ck_barrier_tournament_round* %128, i64 %130
  %132 = getelementptr inbounds %struct.ck_barrier_tournament_round, %struct.ck_barrier_tournament_round* %131, i32 0, i32 0
  store i64 %123, i64* %132, align 8
  br label %133

133:                                              ; preds = %122, %118, %115
  br label %134

134:                                              ; preds = %133, %104
  %135 = load %struct.ck_barrier_tournament_round**, %struct.ck_barrier_tournament_round*** %5, align 8
  %136 = load i32, i32* %7, align 4
  %137 = zext i32 %136 to i64
  %138 = getelementptr inbounds %struct.ck_barrier_tournament_round*, %struct.ck_barrier_tournament_round** %135, i64 %137
  %139 = load %struct.ck_barrier_tournament_round*, %struct.ck_barrier_tournament_round** %138, align 8
  %140 = load i32, i32* %8, align 4
  %141 = zext i32 %140 to i64
  %142 = getelementptr inbounds %struct.ck_barrier_tournament_round, %struct.ck_barrier_tournament_round* %139, i64 %141
  %143 = getelementptr inbounds %struct.ck_barrier_tournament_round, %struct.ck_barrier_tournament_round* %142, i32 0, i32 0
  %144 = load i64, i64* %143, align 8
  %145 = load i64, i64* @CK_BARRIER_TOURNAMENT_LOSER, align 8
  %146 = icmp eq i64 %144, %145
  br i1 %146, label %147, label %168

147:                                              ; preds = %134
  %148 = load %struct.ck_barrier_tournament_round**, %struct.ck_barrier_tournament_round*** %5, align 8
  %149 = load i32, i32* %7, align 4
  %150 = load i32, i32* %11, align 4
  %151 = sub i32 %149, %150
  %152 = zext i32 %151 to i64
  %153 = getelementptr inbounds %struct.ck_barrier_tournament_round*, %struct.ck_barrier_tournament_round** %148, i64 %152
  %154 = load %struct.ck_barrier_tournament_round*, %struct.ck_barrier_tournament_round** %153, align 8
  %155 = load i32, i32* %8, align 4
  %156 = zext i32 %155 to i64
  %157 = getelementptr inbounds %struct.ck_barrier_tournament_round, %struct.ck_barrier_tournament_round* %154, i64 %156
  %158 = getelementptr inbounds %struct.ck_barrier_tournament_round, %struct.ck_barrier_tournament_round* %157, i32 0, i32 1
  %159 = load %struct.ck_barrier_tournament_round**, %struct.ck_barrier_tournament_round*** %5, align 8
  %160 = load i32, i32* %7, align 4
  %161 = zext i32 %160 to i64
  %162 = getelementptr inbounds %struct.ck_barrier_tournament_round*, %struct.ck_barrier_tournament_round** %159, i64 %161
  %163 = load %struct.ck_barrier_tournament_round*, %struct.ck_barrier_tournament_round** %162, align 8
  %164 = load i32, i32* %8, align 4
  %165 = zext i32 %164 to i64
  %166 = getelementptr inbounds %struct.ck_barrier_tournament_round, %struct.ck_barrier_tournament_round* %163, i64 %165
  %167 = getelementptr inbounds %struct.ck_barrier_tournament_round, %struct.ck_barrier_tournament_round* %166, i32 0, i32 2
  store i64* %158, i64** %167, align 8
  br label %216

168:                                              ; preds = %134
  %169 = load %struct.ck_barrier_tournament_round**, %struct.ck_barrier_tournament_round*** %5, align 8
  %170 = load i32, i32* %7, align 4
  %171 = zext i32 %170 to i64
  %172 = getelementptr inbounds %struct.ck_barrier_tournament_round*, %struct.ck_barrier_tournament_round** %169, i64 %171
  %173 = load %struct.ck_barrier_tournament_round*, %struct.ck_barrier_tournament_round** %172, align 8
  %174 = load i32, i32* %8, align 4
  %175 = zext i32 %174 to i64
  %176 = getelementptr inbounds %struct.ck_barrier_tournament_round, %struct.ck_barrier_tournament_round* %173, i64 %175
  %177 = getelementptr inbounds %struct.ck_barrier_tournament_round, %struct.ck_barrier_tournament_round* %176, i32 0, i32 0
  %178 = load i64, i64* %177, align 8
  %179 = load i64, i64* @CK_BARRIER_TOURNAMENT_WINNER, align 8
  %180 = icmp eq i64 %178, %179
  br i1 %180, label %194, label %181

181:                                              ; preds = %168
  %182 = load %struct.ck_barrier_tournament_round**, %struct.ck_barrier_tournament_round*** %5, align 8
  %183 = load i32, i32* %7, align 4
  %184 = zext i32 %183 to i64
  %185 = getelementptr inbounds %struct.ck_barrier_tournament_round*, %struct.ck_barrier_tournament_round** %182, i64 %184
  %186 = load %struct.ck_barrier_tournament_round*, %struct.ck_barrier_tournament_round** %185, align 8
  %187 = load i32, i32* %8, align 4
  %188 = zext i32 %187 to i64
  %189 = getelementptr inbounds %struct.ck_barrier_tournament_round, %struct.ck_barrier_tournament_round* %186, i64 %188
  %190 = getelementptr inbounds %struct.ck_barrier_tournament_round, %struct.ck_barrier_tournament_round* %189, i32 0, i32 0
  %191 = load i64, i64* %190, align 8
  %192 = load i64, i64* @CK_BARRIER_TOURNAMENT_CHAMPION, align 8
  %193 = icmp eq i64 %191, %192
  br i1 %193, label %194, label %215

194:                                              ; preds = %181, %168
  %195 = load %struct.ck_barrier_tournament_round**, %struct.ck_barrier_tournament_round*** %5, align 8
  %196 = load i32, i32* %7, align 4
  %197 = load i32, i32* %11, align 4
  %198 = add i32 %196, %197
  %199 = zext i32 %198 to i64
  %200 = getelementptr inbounds %struct.ck_barrier_tournament_round*, %struct.ck_barrier_tournament_round** %195, i64 %199
  %201 = load %struct.ck_barrier_tournament_round*, %struct.ck_barrier_tournament_round** %200, align 8
  %202 = load i32, i32* %8, align 4
  %203 = zext i32 %202 to i64
  %204 = getelementptr inbounds %struct.ck_barrier_tournament_round, %struct.ck_barrier_tournament_round* %201, i64 %203
  %205 = getelementptr inbounds %struct.ck_barrier_tournament_round, %struct.ck_barrier_tournament_round* %204, i32 0, i32 1
  %206 = load %struct.ck_barrier_tournament_round**, %struct.ck_barrier_tournament_round*** %5, align 8
  %207 = load i32, i32* %7, align 4
  %208 = zext i32 %207 to i64
  %209 = getelementptr inbounds %struct.ck_barrier_tournament_round*, %struct.ck_barrier_tournament_round** %206, i64 %208
  %210 = load %struct.ck_barrier_tournament_round*, %struct.ck_barrier_tournament_round** %209, align 8
  %211 = load i32, i32* %8, align 4
  %212 = zext i32 %211 to i64
  %213 = getelementptr inbounds %struct.ck_barrier_tournament_round, %struct.ck_barrier_tournament_round* %210, i64 %212
  %214 = getelementptr inbounds %struct.ck_barrier_tournament_round, %struct.ck_barrier_tournament_round* %213, i32 0, i32 2
  store i64* %205, i64** %214, align 8
  br label %215

215:                                              ; preds = %194, %181
  br label %216

216:                                              ; preds = %215, %147
  br label %217

217:                                              ; preds = %216
  %218 = load i32, i32* %8, align 4
  %219 = add i32 %218, 1
  store i32 %219, i32* %8, align 4
  %220 = load i32, i32* %10, align 4
  store i32 %220, i32* %11, align 4
  %221 = load i32, i32* %10, align 4
  %222 = shl i32 %221, 1
  store i32 %222, i32* %10, align 4
  br label %40

223:                                              ; preds = %40
  br label %224

224:                                              ; preds = %223
  %225 = load i32, i32* %7, align 4
  %226 = add i32 %225, 1
  store i32 %226, i32* %7, align 4
  br label %20

227:                                              ; preds = %20
  %228 = load %struct.ck_barrier_tournament*, %struct.ck_barrier_tournament** %4, align 8
  %229 = getelementptr inbounds %struct.ck_barrier_tournament, %struct.ck_barrier_tournament* %228, i32 0, i32 1
  %230 = load %struct.ck_barrier_tournament_round**, %struct.ck_barrier_tournament_round*** %5, align 8
  %231 = call i32 @ck_pr_store_ptr(i32* %229, %struct.ck_barrier_tournament_round** %230)
  ret void
}

declare dso_local i32 @ck_pr_store_uint(i32*, i32) #1

declare dso_local i32 @ck_barrier_tournament_size(i32) #1

declare dso_local i32 @ck_pr_store_ptr(i32*, %struct.ck_barrier_tournament_round**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
