; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_disk_posix.c_tree_next.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_disk_posix.c_tree_next.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tree = type { i64, i32, i32, %struct.TYPE_3__*, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@INVALID_DIR_HANDLE = common dso_local global i64 0, align 8
@needsFirstVisit = common dso_local global i32 0, align 4
@TREE_REGULAR = common dso_local global i32 0, align 4
@needsDescent = common dso_local global i32 0, align 4
@TREE_POSTDESCENT = common dso_local global i32 0, align 4
@needsOpen = common dso_local global i32 0, align 4
@needsAscent = common dso_local global i32 0, align 4
@TREE_POSTASCENT = common dso_local global i32 0, align 4
@hasLstat = common dso_local global i32 0, align 4
@hasStat = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tree*)* @tree_next to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tree_next(%struct.tree* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.tree*, align 8
  %4 = alloca i32, align 4
  store %struct.tree* %0, %struct.tree** %3, align 8
  br label %5

5:                                                ; preds = %187, %139, %21, %1
  %6 = load %struct.tree*, %struct.tree** %3, align 8
  %7 = getelementptr inbounds %struct.tree, %struct.tree* %6, i32 0, i32 3
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %9 = icmp ne %struct.TYPE_3__* %8, null
  br i1 %9, label %10, label %188

10:                                               ; preds = %5
  %11 = load %struct.tree*, %struct.tree** %3, align 8
  %12 = getelementptr inbounds %struct.tree, %struct.tree* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @INVALID_DIR_HANDLE, align 8
  %15 = icmp ne i64 %13, %14
  br i1 %15, label %16, label %24

16:                                               ; preds = %10
  %17 = load %struct.tree*, %struct.tree** %3, align 8
  %18 = call i32 @tree_dir_next_posix(%struct.tree* %17)
  store i32 %18, i32* %4, align 4
  %19 = load i32, i32* %4, align 4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %16
  br label %5

22:                                               ; preds = %16
  %23 = load i32, i32* %4, align 4
  store i32 %23, i32* %2, align 4
  br label %191

24:                                               ; preds = %10
  %25 = load %struct.tree*, %struct.tree** %3, align 8
  %26 = getelementptr inbounds %struct.tree, %struct.tree* %25, i32 0, i32 3
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @needsFirstVisit, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %63

33:                                               ; preds = %24
  %34 = load %struct.tree*, %struct.tree** %3, align 8
  %35 = getelementptr inbounds %struct.tree, %struct.tree* %34, i32 0, i32 3
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %35, align 8
  %37 = load %struct.tree*, %struct.tree** %3, align 8
  %38 = getelementptr inbounds %struct.tree, %struct.tree* %37, i32 0, i32 4
  store %struct.TYPE_3__* %36, %struct.TYPE_3__** %38, align 8
  %39 = load %struct.tree*, %struct.tree** %3, align 8
  %40 = load %struct.tree*, %struct.tree** %3, align 8
  %41 = getelementptr inbounds %struct.tree, %struct.tree* %40, i32 0, i32 3
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.tree*, %struct.tree** %3, align 8
  %47 = getelementptr inbounds %struct.tree, %struct.tree* %46, i32 0, i32 3
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 1
  %50 = call i32 @archive_strlen(%struct.TYPE_4__* %49)
  %51 = call i32 @tree_append(%struct.tree* %39, i32 %45, i32 %50)
  %52 = load i32, i32* @needsFirstVisit, align 4
  %53 = xor i32 %52, -1
  %54 = load %struct.tree*, %struct.tree** %3, align 8
  %55 = getelementptr inbounds %struct.tree, %struct.tree* %54, i32 0, i32 3
  %56 = load %struct.TYPE_3__*, %struct.TYPE_3__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = and i32 %58, %53
  store i32 %59, i32* %57, align 4
  %60 = load i32, i32* @TREE_REGULAR, align 4
  %61 = load %struct.tree*, %struct.tree** %3, align 8
  %62 = getelementptr inbounds %struct.tree, %struct.tree* %61, i32 0, i32 1
  store i32 %60, i32* %62, align 8
  store i32 %60, i32* %2, align 4
  br label %191

63:                                               ; preds = %24
  %64 = load %struct.tree*, %struct.tree** %3, align 8
  %65 = getelementptr inbounds %struct.tree, %struct.tree* %64, i32 0, i32 3
  %66 = load %struct.TYPE_3__*, %struct.TYPE_3__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* @needsDescent, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %117

72:                                               ; preds = %63
  %73 = load %struct.tree*, %struct.tree** %3, align 8
  %74 = getelementptr inbounds %struct.tree, %struct.tree* %73, i32 0, i32 3
  %75 = load %struct.TYPE_3__*, %struct.TYPE_3__** %74, align 8
  %76 = load %struct.tree*, %struct.tree** %3, align 8
  %77 = getelementptr inbounds %struct.tree, %struct.tree* %76, i32 0, i32 4
  store %struct.TYPE_3__* %75, %struct.TYPE_3__** %77, align 8
  %78 = load %struct.tree*, %struct.tree** %3, align 8
  %79 = load %struct.tree*, %struct.tree** %3, align 8
  %80 = getelementptr inbounds %struct.tree, %struct.tree* %79, i32 0, i32 3
  %81 = load %struct.TYPE_3__*, %struct.TYPE_3__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %81, i32 0, i32 1
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.tree*, %struct.tree** %3, align 8
  %86 = getelementptr inbounds %struct.tree, %struct.tree* %85, i32 0, i32 3
  %87 = load %struct.TYPE_3__*, %struct.TYPE_3__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %87, i32 0, i32 1
  %89 = call i32 @archive_strlen(%struct.TYPE_4__* %88)
  %90 = call i32 @tree_append(%struct.tree* %78, i32 %84, i32 %89)
  %91 = load i32, i32* @needsDescent, align 4
  %92 = xor i32 %91, -1
  %93 = load %struct.tree*, %struct.tree** %3, align 8
  %94 = getelementptr inbounds %struct.tree, %struct.tree* %93, i32 0, i32 3
  %95 = load %struct.TYPE_3__*, %struct.TYPE_3__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = and i32 %97, %92
  store i32 %98, i32* %96, align 4
  %99 = load %struct.tree*, %struct.tree** %3, align 8
  %100 = call i32 @tree_descent(%struct.tree* %99)
  store i32 %100, i32* %4, align 4
  %101 = load i32, i32* %4, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %109

103:                                              ; preds = %72
  %104 = load %struct.tree*, %struct.tree** %3, align 8
  %105 = call i32 @tree_pop(%struct.tree* %104)
  %106 = load i32, i32* %4, align 4
  %107 = load %struct.tree*, %struct.tree** %3, align 8
  %108 = getelementptr inbounds %struct.tree, %struct.tree* %107, i32 0, i32 1
  store i32 %106, i32* %108, align 8
  br label %113

109:                                              ; preds = %72
  %110 = load i32, i32* @TREE_POSTDESCENT, align 4
  %111 = load %struct.tree*, %struct.tree** %3, align 8
  %112 = getelementptr inbounds %struct.tree, %struct.tree* %111, i32 0, i32 1
  store i32 %110, i32* %112, align 8
  br label %113

113:                                              ; preds = %109, %103
  %114 = load %struct.tree*, %struct.tree** %3, align 8
  %115 = getelementptr inbounds %struct.tree, %struct.tree* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 8
  store i32 %116, i32* %2, align 4
  br label %191

117:                                              ; preds = %63
  %118 = load %struct.tree*, %struct.tree** %3, align 8
  %119 = getelementptr inbounds %struct.tree, %struct.tree* %118, i32 0, i32 3
  %120 = load %struct.TYPE_3__*, %struct.TYPE_3__** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = load i32, i32* @needsOpen, align 4
  %124 = and i32 %122, %123
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %142

126:                                              ; preds = %117
  %127 = load i32, i32* @needsOpen, align 4
  %128 = xor i32 %127, -1
  %129 = load %struct.tree*, %struct.tree** %3, align 8
  %130 = getelementptr inbounds %struct.tree, %struct.tree* %129, i32 0, i32 3
  %131 = load %struct.TYPE_3__*, %struct.TYPE_3__** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 4
  %134 = and i32 %133, %128
  store i32 %134, i32* %132, align 4
  %135 = load %struct.tree*, %struct.tree** %3, align 8
  %136 = call i32 @tree_dir_next_posix(%struct.tree* %135)
  store i32 %136, i32* %4, align 4
  %137 = load i32, i32* %4, align 4
  %138 = icmp eq i32 %137, 0
  br i1 %138, label %139, label %140

139:                                              ; preds = %126
  br label %5

140:                                              ; preds = %126
  %141 = load i32, i32* %4, align 4
  store i32 %141, i32* %2, align 4
  br label %191

142:                                              ; preds = %117
  %143 = load %struct.tree*, %struct.tree** %3, align 8
  %144 = getelementptr inbounds %struct.tree, %struct.tree* %143, i32 0, i32 3
  %145 = load %struct.TYPE_3__*, %struct.TYPE_3__** %144, align 8
  %146 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 4
  %148 = load i32, i32* @needsAscent, align 4
  %149 = and i32 %147, %148
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %169

151:                                              ; preds = %142
  %152 = load %struct.tree*, %struct.tree** %3, align 8
  %153 = call i32 @tree_ascend(%struct.tree* %152)
  store i32 %153, i32* %4, align 4
  %154 = load %struct.tree*, %struct.tree** %3, align 8
  %155 = call i32 @tree_pop(%struct.tree* %154)
  %156 = load i32, i32* %4, align 4
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %160

158:                                              ; preds = %151
  %159 = load i32, i32* %4, align 4
  br label %162

160:                                              ; preds = %151
  %161 = load i32, i32* @TREE_POSTASCENT, align 4
  br label %162

162:                                              ; preds = %160, %158
  %163 = phi i32 [ %159, %158 ], [ %161, %160 ]
  %164 = load %struct.tree*, %struct.tree** %3, align 8
  %165 = getelementptr inbounds %struct.tree, %struct.tree* %164, i32 0, i32 1
  store i32 %163, i32* %165, align 8
  %166 = load %struct.tree*, %struct.tree** %3, align 8
  %167 = getelementptr inbounds %struct.tree, %struct.tree* %166, i32 0, i32 1
  %168 = load i32, i32* %167, align 8
  store i32 %168, i32* %2, align 4
  br label %191

169:                                              ; preds = %142
  %170 = load %struct.tree*, %struct.tree** %3, align 8
  %171 = call i32 @tree_pop(%struct.tree* %170)
  %172 = load i32, i32* @hasLstat, align 4
  %173 = xor i32 %172, -1
  %174 = load %struct.tree*, %struct.tree** %3, align 8
  %175 = getelementptr inbounds %struct.tree, %struct.tree* %174, i32 0, i32 2
  %176 = load i32, i32* %175, align 4
  %177 = and i32 %176, %173
  store i32 %177, i32* %175, align 4
  %178 = load i32, i32* @hasStat, align 4
  %179 = xor i32 %178, -1
  %180 = load %struct.tree*, %struct.tree** %3, align 8
  %181 = getelementptr inbounds %struct.tree, %struct.tree* %180, i32 0, i32 2
  %182 = load i32, i32* %181, align 4
  %183 = and i32 %182, %179
  store i32 %183, i32* %181, align 4
  br label %184

184:                                              ; preds = %169
  br label %185

185:                                              ; preds = %184
  br label %186

186:                                              ; preds = %185
  br label %187

187:                                              ; preds = %186
  br label %5

188:                                              ; preds = %5
  %189 = load %struct.tree*, %struct.tree** %3, align 8
  %190 = getelementptr inbounds %struct.tree, %struct.tree* %189, i32 0, i32 1
  store i32 0, i32* %190, align 8
  store i32 0, i32* %2, align 4
  br label %191

191:                                              ; preds = %188, %162, %140, %113, %33, %22
  %192 = load i32, i32* %2, align 4
  ret i32 %192
}

declare dso_local i32 @tree_dir_next_posix(%struct.tree*) #1

declare dso_local i32 @tree_append(%struct.tree*, i32, i32) #1

declare dso_local i32 @archive_strlen(%struct.TYPE_4__*) #1

declare dso_local i32 @tree_descent(%struct.tree*) #1

declare dso_local i32 @tree_pop(%struct.tree*) #1

declare dso_local i32 @tree_ascend(%struct.tree*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
