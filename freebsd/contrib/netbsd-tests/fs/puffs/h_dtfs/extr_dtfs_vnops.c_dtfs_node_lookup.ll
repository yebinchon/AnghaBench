; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/netbsd-tests/fs/puffs/h_dtfs/extr_dtfs_vnops.c_dtfs_node_lookup.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/netbsd-tests/fs/puffs/h_dtfs/extr_dtfs_vnops.c_dtfs_node_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.puffs_usermount = type { i32 }
%struct.puffs_newinfo = type { i32 }
%struct.puffs_cn = type { i32, i64, i32, i32, i32 }
%struct.puffs_node = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32, i32 }
%struct.dtfs_file = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64, i32, i32 }
%struct.dtfs_dirent = type { %struct.TYPE_7__* }

@ENOENT = common dso_local global i32 0, align 4
@VDIR = common dso_local global i64 0, align 8
@NAMEI_ISLASTCN = common dso_local global i32 0, align 4
@NAMEI_DELETE = common dso_local global i64 0, align 8
@PUFFS_VWRITE = common dso_local global i32 0, align 4
@straightflush = external dso_local global i32, align 4
@NAMEI_CREATE = common dso_local global i64 0, align 8
@NAMEI_RENAME = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dtfs_node_lookup(%struct.puffs_usermount* %0, i8* %1, %struct.puffs_newinfo* %2, %struct.puffs_cn* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.puffs_usermount*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.puffs_newinfo*, align 8
  %9 = alloca %struct.puffs_cn*, align 8
  %10 = alloca %struct.puffs_node*, align 8
  %11 = alloca %struct.dtfs_file*, align 8
  %12 = alloca %struct.dtfs_dirent*, align 8
  %13 = alloca i32, align 4
  store %struct.puffs_usermount* %0, %struct.puffs_usermount** %6, align 8
  store i8* %1, i8** %7, align 8
  store %struct.puffs_newinfo* %2, %struct.puffs_newinfo** %8, align 8
  store %struct.puffs_cn* %3, %struct.puffs_cn** %9, align 8
  %14 = load i8*, i8** %7, align 8
  %15 = bitcast i8* %14 to %struct.puffs_node*
  store %struct.puffs_node* %15, %struct.puffs_node** %10, align 8
  %16 = load i8*, i8** %7, align 8
  %17 = call %struct.dtfs_file* @DTFS_CTOF(i8* %16)
  store %struct.dtfs_file* %17, %struct.dtfs_file** %11, align 8
  %18 = load %struct.puffs_cn*, %struct.puffs_cn** %9, align 8
  %19 = call i64 @PCNISDOTDOT(%struct.puffs_cn* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %52

21:                                               ; preds = %4
  %22 = load %struct.dtfs_file*, %struct.dtfs_file** %11, align 8
  %23 = getelementptr inbounds %struct.dtfs_file, %struct.dtfs_file* %22, i32 0, i32 0
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %23, align 8
  %25 = icmp eq %struct.TYPE_7__* %24, null
  br i1 %25, label %26, label %28

26:                                               ; preds = %21
  %27 = load i32, i32* @ENOENT, align 4
  store i32 %27, i32* %5, align 4
  br label %184

28:                                               ; preds = %21
  %29 = load %struct.dtfs_file*, %struct.dtfs_file** %11, align 8
  %30 = getelementptr inbounds %struct.dtfs_file, %struct.dtfs_file* %29, i32 0, i32 0
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @VDIR, align 8
  %36 = icmp eq i64 %34, %35
  %37 = zext i1 %36 to i32
  %38 = call i32 @assert(i32 %37)
  %39 = load %struct.puffs_newinfo*, %struct.puffs_newinfo** %8, align 8
  %40 = load %struct.dtfs_file*, %struct.dtfs_file** %11, align 8
  %41 = getelementptr inbounds %struct.dtfs_file, %struct.dtfs_file* %40, i32 0, i32 0
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %41, align 8
  %43 = call i32 @puffs_newinfo_setcookie(%struct.puffs_newinfo* %39, %struct.TYPE_7__* %42)
  %44 = load %struct.puffs_newinfo*, %struct.puffs_newinfo** %8, align 8
  %45 = load %struct.dtfs_file*, %struct.dtfs_file** %11, align 8
  %46 = getelementptr inbounds %struct.dtfs_file, %struct.dtfs_file* %45, i32 0, i32 0
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = call i32 @puffs_newinfo_setvtype(%struct.puffs_newinfo* %44, i64 %50)
  store i32 0, i32* %5, align 4
  br label %184

52:                                               ; preds = %4
  %53 = load %struct.dtfs_file*, %struct.dtfs_file** %11, align 8
  %54 = load %struct.puffs_cn*, %struct.puffs_cn** %9, align 8
  %55 = getelementptr inbounds %struct.puffs_cn, %struct.puffs_cn* %54, i32 0, i32 4
  %56 = load i32, i32* %55, align 8
  %57 = load %struct.puffs_cn*, %struct.puffs_cn** %9, align 8
  %58 = getelementptr inbounds %struct.puffs_cn, %struct.puffs_cn* %57, i32 0, i32 3
  %59 = load i32, i32* %58, align 4
  %60 = call %struct.dtfs_dirent* @dtfs_dirgetbyname(%struct.dtfs_file* %53, i32 %56, i32 %59)
  store %struct.dtfs_dirent* %60, %struct.dtfs_dirent** %12, align 8
  %61 = load %struct.dtfs_dirent*, %struct.dtfs_dirent** %12, align 8
  %62 = icmp ne %struct.dtfs_dirent* %61, null
  br i1 %62, label %63, label %139

63:                                               ; preds = %52
  %64 = load %struct.puffs_cn*, %struct.puffs_cn** %9, align 8
  %65 = getelementptr inbounds %struct.puffs_cn, %struct.puffs_cn* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = load i32, i32* @NAMEI_ISLASTCN, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %100

70:                                               ; preds = %63
  %71 = load %struct.puffs_cn*, %struct.puffs_cn** %9, align 8
  %72 = getelementptr inbounds %struct.puffs_cn, %struct.puffs_cn* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* @NAMEI_DELETE, align 8
  %75 = icmp eq i64 %73, %74
  br i1 %75, label %76, label %100

76:                                               ; preds = %70
  %77 = load i64, i64* @VDIR, align 8
  %78 = load %struct.puffs_node*, %struct.puffs_node** %10, align 8
  %79 = getelementptr inbounds %struct.puffs_node, %struct.puffs_node* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.puffs_node*, %struct.puffs_node** %10, align 8
  %83 = getelementptr inbounds %struct.puffs_node, %struct.puffs_node* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.puffs_node*, %struct.puffs_node** %10, align 8
  %87 = getelementptr inbounds %struct.puffs_node, %struct.puffs_node* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* @PUFFS_VWRITE, align 4
  %91 = load %struct.puffs_cn*, %struct.puffs_cn** %9, align 8
  %92 = getelementptr inbounds %struct.puffs_cn, %struct.puffs_cn* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 8
  %94 = call i32 @puffs_access(i64 %77, i32 %81, i32 %85, i32 %89, i32 %90, i32 %93)
  store i32 %94, i32* %13, align 4
  %95 = load i32, i32* %13, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %99

97:                                               ; preds = %76
  %98 = load i32, i32* %13, align 4
  store i32 %98, i32* %5, align 4
  br label %184

99:                                               ; preds = %76
  br label %100

100:                                              ; preds = %99, %70, %63
  %101 = load %struct.puffs_newinfo*, %struct.puffs_newinfo** %8, align 8
  %102 = load %struct.dtfs_dirent*, %struct.dtfs_dirent** %12, align 8
  %103 = getelementptr inbounds %struct.dtfs_dirent, %struct.dtfs_dirent* %102, i32 0, i32 0
  %104 = load %struct.TYPE_7__*, %struct.TYPE_7__** %103, align 8
  %105 = call i32 @puffs_newinfo_setcookie(%struct.puffs_newinfo* %101, %struct.TYPE_7__* %104)
  %106 = load %struct.puffs_newinfo*, %struct.puffs_newinfo** %8, align 8
  %107 = load %struct.dtfs_dirent*, %struct.dtfs_dirent** %12, align 8
  %108 = getelementptr inbounds %struct.dtfs_dirent, %struct.dtfs_dirent* %107, i32 0, i32 0
  %109 = load %struct.TYPE_7__*, %struct.TYPE_7__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = call i32 @puffs_newinfo_setvtype(%struct.puffs_newinfo* %106, i64 %112)
  %114 = load %struct.puffs_newinfo*, %struct.puffs_newinfo** %8, align 8
  %115 = load %struct.dtfs_dirent*, %struct.dtfs_dirent** %12, align 8
  %116 = getelementptr inbounds %struct.dtfs_dirent, %struct.dtfs_dirent* %115, i32 0, i32 0
  %117 = load %struct.TYPE_7__*, %struct.TYPE_7__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %118, i32 0, i32 2
  %120 = load i32, i32* %119, align 4
  %121 = call i32 @puffs_newinfo_setsize(%struct.puffs_newinfo* %114, i32 %120)
  %122 = load %struct.puffs_newinfo*, %struct.puffs_newinfo** %8, align 8
  %123 = load %struct.dtfs_dirent*, %struct.dtfs_dirent** %12, align 8
  %124 = getelementptr inbounds %struct.dtfs_dirent, %struct.dtfs_dirent* %123, i32 0, i32 0
  %125 = load %struct.TYPE_7__*, %struct.TYPE_7__** %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %125, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 8
  %129 = call i32 @puffs_newinfo_setrdev(%struct.puffs_newinfo* %122, i32 %128)
  %130 = load i32, i32* @straightflush, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %138

132:                                              ; preds = %100
  %133 = load %struct.puffs_usermount*, %struct.puffs_usermount** %6, align 8
  %134 = load %struct.dtfs_dirent*, %struct.dtfs_dirent** %12, align 8
  %135 = getelementptr inbounds %struct.dtfs_dirent, %struct.dtfs_dirent* %134, i32 0, i32 0
  %136 = load %struct.TYPE_7__*, %struct.TYPE_7__** %135, align 8
  %137 = call i32 @puffs_flush_pagecache_node(%struct.puffs_usermount* %133, %struct.TYPE_7__* %136)
  br label %138

138:                                              ; preds = %132, %100
  store i32 0, i32* %5, align 4
  br label %184

139:                                              ; preds = %52
  %140 = load %struct.puffs_cn*, %struct.puffs_cn** %9, align 8
  %141 = getelementptr inbounds %struct.puffs_cn, %struct.puffs_cn* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 8
  %143 = load i32, i32* @NAMEI_ISLASTCN, align 4
  %144 = and i32 %142, %143
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %182

146:                                              ; preds = %139
  %147 = load %struct.puffs_cn*, %struct.puffs_cn** %9, align 8
  %148 = getelementptr inbounds %struct.puffs_cn, %struct.puffs_cn* %147, i32 0, i32 1
  %149 = load i64, i64* %148, align 8
  %150 = load i64, i64* @NAMEI_CREATE, align 8
  %151 = icmp eq i64 %149, %150
  br i1 %151, label %158, label %152

152:                                              ; preds = %146
  %153 = load %struct.puffs_cn*, %struct.puffs_cn** %9, align 8
  %154 = getelementptr inbounds %struct.puffs_cn, %struct.puffs_cn* %153, i32 0, i32 1
  %155 = load i64, i64* %154, align 8
  %156 = load i64, i64* @NAMEI_RENAME, align 8
  %157 = icmp eq i64 %155, %156
  br i1 %157, label %158, label %182

158:                                              ; preds = %152, %146
  %159 = load i64, i64* @VDIR, align 8
  %160 = load %struct.puffs_node*, %struct.puffs_node** %10, align 8
  %161 = getelementptr inbounds %struct.puffs_node, %struct.puffs_node* %160, i32 0, i32 0
  %162 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %161, i32 0, i32 2
  %163 = load i32, i32* %162, align 4
  %164 = load %struct.puffs_node*, %struct.puffs_node** %10, align 8
  %165 = getelementptr inbounds %struct.puffs_node, %struct.puffs_node* %164, i32 0, i32 0
  %166 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %165, i32 0, i32 1
  %167 = load i32, i32* %166, align 4
  %168 = load %struct.puffs_node*, %struct.puffs_node** %10, align 8
  %169 = getelementptr inbounds %struct.puffs_node, %struct.puffs_node* %168, i32 0, i32 0
  %170 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 4
  %172 = load i32, i32* @PUFFS_VWRITE, align 4
  %173 = load %struct.puffs_cn*, %struct.puffs_cn** %9, align 8
  %174 = getelementptr inbounds %struct.puffs_cn, %struct.puffs_cn* %173, i32 0, i32 2
  %175 = load i32, i32* %174, align 8
  %176 = call i32 @puffs_access(i64 %159, i32 %163, i32 %167, i32 %171, i32 %172, i32 %175)
  store i32 %176, i32* %13, align 4
  %177 = load i32, i32* %13, align 4
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %179, label %181

179:                                              ; preds = %158
  %180 = load i32, i32* %13, align 4
  store i32 %180, i32* %5, align 4
  br label %184

181:                                              ; preds = %158
  br label %182

182:                                              ; preds = %181, %152, %139
  %183 = load i32, i32* @ENOENT, align 4
  store i32 %183, i32* %5, align 4
  br label %184

184:                                              ; preds = %182, %179, %138, %97, %28, %26
  %185 = load i32, i32* %5, align 4
  ret i32 %185
}

declare dso_local %struct.dtfs_file* @DTFS_CTOF(i8*) #1

declare dso_local i64 @PCNISDOTDOT(%struct.puffs_cn*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @puffs_newinfo_setcookie(%struct.puffs_newinfo*, %struct.TYPE_7__*) #1

declare dso_local i32 @puffs_newinfo_setvtype(%struct.puffs_newinfo*, i64) #1

declare dso_local %struct.dtfs_dirent* @dtfs_dirgetbyname(%struct.dtfs_file*, i32, i32) #1

declare dso_local i32 @puffs_access(i64, i32, i32, i32, i32, i32) #1

declare dso_local i32 @puffs_newinfo_setsize(%struct.puffs_newinfo*, i32) #1

declare dso_local i32 @puffs_newinfo_setrdev(%struct.puffs_newinfo*, i32) #1

declare dso_local i32 @puffs_flush_pagecache_node(%struct.puffs_usermount*, %struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
