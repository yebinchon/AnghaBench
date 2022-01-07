; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/validator/extr_autotrust.c_parse_var_line.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/validator/extr_autotrust.c_parse_var_line.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.val_anchors = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.trust_anchor = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i8*, i8*, i64, i32, i8*, i8*, i8* }

@.str = private unnamed_addr constant [7 x i8] c";;id: \00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c";;REVOKED\00", align 1
@.str.2 = private unnamed_addr constant [43 x i8] c"REVOKED statement must be at start of file\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c";;last_queried: \00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c";;last_success: \00", align 1
@.str.5 = private unnamed_addr constant [20 x i8] c";;next_probe_time: \00", align 1
@.str.6 = private unnamed_addr constant [17 x i8] c";;query_failed: \00", align 1
@.str.7 = private unnamed_addr constant [19 x i8] c";;query_interval: \00", align 1
@.str.8 = private unnamed_addr constant [15 x i8] c";;retry_time: \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.val_anchors*, %struct.trust_anchor**)* @parse_var_line to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_var_line(i8* %0, %struct.val_anchors* %1, %struct.trust_anchor** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.val_anchors*, align 8
  %7 = alloca %struct.trust_anchor**, align 8
  %8 = alloca %struct.trust_anchor*, align 8
  %9 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store %struct.val_anchors* %1, %struct.val_anchors** %6, align 8
  store %struct.trust_anchor** %2, %struct.trust_anchor*** %7, align 8
  %10 = load %struct.trust_anchor**, %struct.trust_anchor*** %7, align 8
  %11 = load %struct.trust_anchor*, %struct.trust_anchor** %10, align 8
  store %struct.trust_anchor* %11, %struct.trust_anchor** %8, align 8
  store i32 0, i32* %9, align 4
  %12 = load i8*, i8** %5, align 8
  %13 = call i64 @strncmp(i8* %12, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 6)
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %15, label %26

15:                                               ; preds = %3
  %16 = load %struct.val_anchors*, %struct.val_anchors** %6, align 8
  %17 = load i8*, i8** %5, align 8
  %18 = getelementptr inbounds i8, i8* %17, i64 6
  %19 = call %struct.trust_anchor* @parse_id(%struct.val_anchors* %16, i8* %18)
  %20 = load %struct.trust_anchor**, %struct.trust_anchor*** %7, align 8
  store %struct.trust_anchor* %19, %struct.trust_anchor** %20, align 8
  %21 = load %struct.trust_anchor**, %struct.trust_anchor*** %7, align 8
  %22 = load %struct.trust_anchor*, %struct.trust_anchor** %21, align 8
  %23 = icmp ne %struct.trust_anchor* %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %15
  store i32 -1, i32* %4, align 4
  br label %203

25:                                               ; preds = %15
  store i32 1, i32* %4, align 4
  br label %203

26:                                               ; preds = %3
  %27 = load i8*, i8** %5, align 8
  %28 = call i64 @strncmp(i8* %27, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 9)
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %30, label %36

30:                                               ; preds = %26
  %31 = load %struct.trust_anchor*, %struct.trust_anchor** %8, align 8
  %32 = icmp ne %struct.trust_anchor* %31, null
  br i1 %32, label %33, label %35

33:                                               ; preds = %30
  %34 = call i32 @log_err(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %203

35:                                               ; preds = %30
  store i32 2, i32* %4, align 4
  br label %203

36:                                               ; preds = %26
  %37 = load i8*, i8** %5, align 8
  %38 = call i64 @strncmp(i8* %37, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0), i32 16)
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %40, label %59

40:                                               ; preds = %36
  %41 = load %struct.trust_anchor*, %struct.trust_anchor** %8, align 8
  %42 = icmp ne %struct.trust_anchor* %41, null
  br i1 %42, label %44, label %43

43:                                               ; preds = %40
  store i32 -1, i32* %4, align 4
  br label %203

44:                                               ; preds = %40
  %45 = load %struct.trust_anchor*, %struct.trust_anchor** %8, align 8
  %46 = getelementptr inbounds %struct.trust_anchor, %struct.trust_anchor* %45, i32 0, i32 0
  %47 = call i32 @lock_basic_lock(i32* %46)
  %48 = load i8*, i8** %5, align 8
  %49 = getelementptr inbounds i8, i8* %48, i64 16
  %50 = call i64 @parse_int(i8* %49, i32* %9)
  %51 = inttoptr i64 %50 to i8*
  %52 = load %struct.trust_anchor*, %struct.trust_anchor** %8, align 8
  %53 = getelementptr inbounds %struct.trust_anchor, %struct.trust_anchor* %52, i32 0, i32 1
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 6
  store i8* %51, i8** %55, align 8
  %56 = load %struct.trust_anchor*, %struct.trust_anchor** %8, align 8
  %57 = getelementptr inbounds %struct.trust_anchor, %struct.trust_anchor* %56, i32 0, i32 0
  %58 = call i32 @lock_basic_unlock(i32* %57)
  br label %199

59:                                               ; preds = %36
  %60 = load i8*, i8** %5, align 8
  %61 = call i64 @strncmp(i8* %60, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0), i32 16)
  %62 = icmp eq i64 %61, 0
  br i1 %62, label %63, label %82

63:                                               ; preds = %59
  %64 = load %struct.trust_anchor*, %struct.trust_anchor** %8, align 8
  %65 = icmp ne %struct.trust_anchor* %64, null
  br i1 %65, label %67, label %66

66:                                               ; preds = %63
  store i32 -1, i32* %4, align 4
  br label %203

67:                                               ; preds = %63
  %68 = load %struct.trust_anchor*, %struct.trust_anchor** %8, align 8
  %69 = getelementptr inbounds %struct.trust_anchor, %struct.trust_anchor* %68, i32 0, i32 0
  %70 = call i32 @lock_basic_lock(i32* %69)
  %71 = load i8*, i8** %5, align 8
  %72 = getelementptr inbounds i8, i8* %71, i64 16
  %73 = call i64 @parse_int(i8* %72, i32* %9)
  %74 = inttoptr i64 %73 to i8*
  %75 = load %struct.trust_anchor*, %struct.trust_anchor** %8, align 8
  %76 = getelementptr inbounds %struct.trust_anchor, %struct.trust_anchor* %75, i32 0, i32 1
  %77 = load %struct.TYPE_4__*, %struct.TYPE_4__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 5
  store i8* %74, i8** %78, align 8
  %79 = load %struct.trust_anchor*, %struct.trust_anchor** %8, align 8
  %80 = getelementptr inbounds %struct.trust_anchor, %struct.trust_anchor* %79, i32 0, i32 0
  %81 = call i32 @lock_basic_unlock(i32* %80)
  br label %198

82:                                               ; preds = %59
  %83 = load i8*, i8** %5, align 8
  %84 = call i64 @strncmp(i8* %83, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0), i32 19)
  %85 = icmp eq i64 %84, 0
  br i1 %85, label %86, label %126

86:                                               ; preds = %82
  %87 = load %struct.trust_anchor*, %struct.trust_anchor** %8, align 8
  %88 = icmp ne %struct.trust_anchor* %87, null
  br i1 %88, label %90, label %89

89:                                               ; preds = %86
  store i32 -1, i32* %4, align 4
  br label %203

90:                                               ; preds = %86
  %91 = load %struct.val_anchors*, %struct.val_anchors** %6, align 8
  %92 = getelementptr inbounds %struct.val_anchors, %struct.val_anchors* %91, i32 0, i32 0
  %93 = call i32 @lock_basic_lock(i32* %92)
  %94 = load %struct.trust_anchor*, %struct.trust_anchor** %8, align 8
  %95 = getelementptr inbounds %struct.trust_anchor, %struct.trust_anchor* %94, i32 0, i32 0
  %96 = call i32 @lock_basic_lock(i32* %95)
  %97 = load %struct.val_anchors*, %struct.val_anchors** %6, align 8
  %98 = getelementptr inbounds %struct.val_anchors, %struct.val_anchors* %97, i32 0, i32 1
  %99 = load %struct.TYPE_3__*, %struct.TYPE_3__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %99, i32 0, i32 0
  %101 = load %struct.trust_anchor*, %struct.trust_anchor** %8, align 8
  %102 = call i32 @rbtree_delete(i32* %100, %struct.trust_anchor* %101)
  %103 = load i8*, i8** %5, align 8
  %104 = getelementptr inbounds i8, i8* %103, i64 19
  %105 = call i64 @parse_int(i8* %104, i32* %9)
  %106 = inttoptr i64 %105 to i8*
  %107 = load %struct.trust_anchor*, %struct.trust_anchor** %8, align 8
  %108 = getelementptr inbounds %struct.trust_anchor, %struct.trust_anchor* %107, i32 0, i32 1
  %109 = load %struct.TYPE_4__*, %struct.TYPE_4__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %109, i32 0, i32 4
  store i8* %106, i8** %110, align 8
  %111 = load %struct.val_anchors*, %struct.val_anchors** %6, align 8
  %112 = getelementptr inbounds %struct.val_anchors, %struct.val_anchors* %111, i32 0, i32 1
  %113 = load %struct.TYPE_3__*, %struct.TYPE_3__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %113, i32 0, i32 0
  %115 = load %struct.trust_anchor*, %struct.trust_anchor** %8, align 8
  %116 = getelementptr inbounds %struct.trust_anchor, %struct.trust_anchor* %115, i32 0, i32 1
  %117 = load %struct.TYPE_4__*, %struct.TYPE_4__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %117, i32 0, i32 3
  %119 = call i32 @rbtree_insert(i32* %114, i32* %118)
  %120 = load %struct.trust_anchor*, %struct.trust_anchor** %8, align 8
  %121 = getelementptr inbounds %struct.trust_anchor, %struct.trust_anchor* %120, i32 0, i32 0
  %122 = call i32 @lock_basic_unlock(i32* %121)
  %123 = load %struct.val_anchors*, %struct.val_anchors** %6, align 8
  %124 = getelementptr inbounds %struct.val_anchors, %struct.val_anchors* %123, i32 0, i32 0
  %125 = call i32 @lock_basic_unlock(i32* %124)
  br label %197

126:                                              ; preds = %82
  %127 = load i8*, i8** %5, align 8
  %128 = call i64 @strncmp(i8* %127, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0), i32 16)
  %129 = icmp eq i64 %128, 0
  br i1 %129, label %130, label %148

130:                                              ; preds = %126
  %131 = load %struct.trust_anchor*, %struct.trust_anchor** %8, align 8
  %132 = icmp ne %struct.trust_anchor* %131, null
  br i1 %132, label %134, label %133

133:                                              ; preds = %130
  store i32 -1, i32* %4, align 4
  br label %203

134:                                              ; preds = %130
  %135 = load %struct.trust_anchor*, %struct.trust_anchor** %8, align 8
  %136 = getelementptr inbounds %struct.trust_anchor, %struct.trust_anchor* %135, i32 0, i32 0
  %137 = call i32 @lock_basic_lock(i32* %136)
  %138 = load i8*, i8** %5, align 8
  %139 = getelementptr inbounds i8, i8* %138, i64 16
  %140 = call i64 @parse_int(i8* %139, i32* %9)
  %141 = load %struct.trust_anchor*, %struct.trust_anchor** %8, align 8
  %142 = getelementptr inbounds %struct.trust_anchor, %struct.trust_anchor* %141, i32 0, i32 1
  %143 = load %struct.TYPE_4__*, %struct.TYPE_4__** %142, align 8
  %144 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %143, i32 0, i32 2
  store i64 %140, i64* %144, align 8
  %145 = load %struct.trust_anchor*, %struct.trust_anchor** %8, align 8
  %146 = getelementptr inbounds %struct.trust_anchor, %struct.trust_anchor* %145, i32 0, i32 0
  %147 = call i32 @lock_basic_unlock(i32* %146)
  br label %196

148:                                              ; preds = %126
  %149 = load i8*, i8** %5, align 8
  %150 = call i64 @strncmp(i8* %149, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.7, i64 0, i64 0), i32 18)
  %151 = icmp eq i64 %150, 0
  br i1 %151, label %152, label %171

152:                                              ; preds = %148
  %153 = load %struct.trust_anchor*, %struct.trust_anchor** %8, align 8
  %154 = icmp ne %struct.trust_anchor* %153, null
  br i1 %154, label %156, label %155

155:                                              ; preds = %152
  store i32 -1, i32* %4, align 4
  br label %203

156:                                              ; preds = %152
  %157 = load %struct.trust_anchor*, %struct.trust_anchor** %8, align 8
  %158 = getelementptr inbounds %struct.trust_anchor, %struct.trust_anchor* %157, i32 0, i32 0
  %159 = call i32 @lock_basic_lock(i32* %158)
  %160 = load i8*, i8** %5, align 8
  %161 = getelementptr inbounds i8, i8* %160, i64 18
  %162 = call i64 @parse_int(i8* %161, i32* %9)
  %163 = inttoptr i64 %162 to i8*
  %164 = load %struct.trust_anchor*, %struct.trust_anchor** %8, align 8
  %165 = getelementptr inbounds %struct.trust_anchor, %struct.trust_anchor* %164, i32 0, i32 1
  %166 = load %struct.TYPE_4__*, %struct.TYPE_4__** %165, align 8
  %167 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %166, i32 0, i32 1
  store i8* %163, i8** %167, align 8
  %168 = load %struct.trust_anchor*, %struct.trust_anchor** %8, align 8
  %169 = getelementptr inbounds %struct.trust_anchor, %struct.trust_anchor* %168, i32 0, i32 0
  %170 = call i32 @lock_basic_unlock(i32* %169)
  br label %195

171:                                              ; preds = %148
  %172 = load i8*, i8** %5, align 8
  %173 = call i64 @strncmp(i8* %172, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i64 0, i64 0), i32 14)
  %174 = icmp eq i64 %173, 0
  br i1 %174, label %175, label %194

175:                                              ; preds = %171
  %176 = load %struct.trust_anchor*, %struct.trust_anchor** %8, align 8
  %177 = icmp ne %struct.trust_anchor* %176, null
  br i1 %177, label %179, label %178

178:                                              ; preds = %175
  store i32 -1, i32* %4, align 4
  br label %203

179:                                              ; preds = %175
  %180 = load %struct.trust_anchor*, %struct.trust_anchor** %8, align 8
  %181 = getelementptr inbounds %struct.trust_anchor, %struct.trust_anchor* %180, i32 0, i32 0
  %182 = call i32 @lock_basic_lock(i32* %181)
  %183 = load i8*, i8** %5, align 8
  %184 = getelementptr inbounds i8, i8* %183, i64 14
  %185 = call i64 @parse_int(i8* %184, i32* %9)
  %186 = inttoptr i64 %185 to i8*
  %187 = load %struct.trust_anchor*, %struct.trust_anchor** %8, align 8
  %188 = getelementptr inbounds %struct.trust_anchor, %struct.trust_anchor* %187, i32 0, i32 1
  %189 = load %struct.TYPE_4__*, %struct.TYPE_4__** %188, align 8
  %190 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %189, i32 0, i32 0
  store i8* %186, i8** %190, align 8
  %191 = load %struct.trust_anchor*, %struct.trust_anchor** %8, align 8
  %192 = getelementptr inbounds %struct.trust_anchor, %struct.trust_anchor* %191, i32 0, i32 0
  %193 = call i32 @lock_basic_unlock(i32* %192)
  br label %194

194:                                              ; preds = %179, %171
  br label %195

195:                                              ; preds = %194, %156
  br label %196

196:                                              ; preds = %195, %134
  br label %197

197:                                              ; preds = %196, %90
  br label %198

198:                                              ; preds = %197, %67
  br label %199

199:                                              ; preds = %198, %44
  br label %200

200:                                              ; preds = %199
  br label %201

201:                                              ; preds = %200
  %202 = load i32, i32* %9, align 4
  store i32 %202, i32* %4, align 4
  br label %203

203:                                              ; preds = %201, %178, %155, %133, %89, %66, %43, %35, %33, %25, %24
  %204 = load i32, i32* %4, align 4
  ret i32 %204
}

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local %struct.trust_anchor* @parse_id(%struct.val_anchors*, i8*) #1

declare dso_local i32 @log_err(i8*) #1

declare dso_local i32 @lock_basic_lock(i32*) #1

declare dso_local i64 @parse_int(i8*, i32*) #1

declare dso_local i32 @lock_basic_unlock(i32*) #1

declare dso_local i32 @rbtree_delete(i32*, %struct.trust_anchor*) #1

declare dso_local i32 @rbtree_insert(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
