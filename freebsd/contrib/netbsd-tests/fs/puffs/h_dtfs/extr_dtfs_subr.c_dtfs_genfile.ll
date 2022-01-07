; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/netbsd-tests/fs/puffs/h_dtfs/extr_dtfs_subr.c_dtfs_genfile.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/netbsd-tests/fs/puffs/h_dtfs/extr_dtfs_subr.c_dtfs_genfile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.puffs_node = type { %struct.TYPE_2__, i32* }
%struct.TYPE_2__ = type { i64, i32, i64 }
%struct.puffs_cn = type { i32, i32, i32 }
%struct.dtfs_file = type { %struct.puffs_node* }
%struct.dtfs_dirent = type { %struct.puffs_node*, i32, i32, %struct.puffs_node* }
%struct.dtfs_mount = type { i32 }

@VDIR = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [12 x i8] c"getnewpnode\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.puffs_node* @dtfs_genfile(%struct.puffs_node* %0, %struct.puffs_cn* %1, i32 %2) #0 {
  %4 = alloca %struct.puffs_node*, align 8
  %5 = alloca %struct.puffs_cn*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.dtfs_file*, align 8
  %8 = alloca %struct.dtfs_dirent*, align 8
  %9 = alloca %struct.dtfs_mount*, align 8
  %10 = alloca %struct.puffs_node*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.puffs_node* %0, %struct.puffs_node** %4, align 8
  store %struct.puffs_cn* %1, %struct.puffs_cn** %5, align 8
  store i32 %2, i32* %6, align 4
  %13 = load %struct.puffs_node*, %struct.puffs_node** %4, align 8
  %14 = getelementptr inbounds %struct.puffs_node, %struct.puffs_node* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @VDIR, align 8
  %18 = icmp eq i64 %16, %17
  %19 = zext i1 %18 to i32
  %20 = call i32 @assert(i32 %19)
  %21 = load %struct.puffs_node*, %struct.puffs_node** %4, align 8
  %22 = getelementptr inbounds %struct.puffs_node, %struct.puffs_node* %21, i32 0, i32 1
  %23 = load i32*, i32** %22, align 8
  %24 = icmp ne i32* %23, null
  %25 = zext i1 %24 to i32
  %26 = call i32 @assert(i32 %25)
  store i64 0, i64* %11, align 8
  %27 = load %struct.puffs_cn*, %struct.puffs_cn** %5, align 8
  %28 = getelementptr inbounds %struct.puffs_cn, %struct.puffs_cn* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @puffs_cred_getuid(i32 %29, i64* %11)
  store i32 %30, i32* %12, align 4
  %31 = load i32, i32* %12, align 4
  %32 = icmp eq i32 %31, 0
  %33 = zext i1 %32 to i32
  %34 = call i32 @assert(i32 %33)
  %35 = load i32, i32* %6, align 4
  %36 = zext i32 %35 to i64
  %37 = load i64, i64* @VDIR, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %44

39:                                               ; preds = %3
  %40 = call %struct.dtfs_file* (...) @dtfs_newdir()
  store %struct.dtfs_file* %40, %struct.dtfs_file** %7, align 8
  %41 = load %struct.puffs_node*, %struct.puffs_node** %4, align 8
  %42 = load %struct.dtfs_file*, %struct.dtfs_file** %7, align 8
  %43 = getelementptr inbounds %struct.dtfs_file, %struct.dtfs_file* %42, i32 0, i32 0
  store %struct.puffs_node* %41, %struct.puffs_node** %43, align 8
  br label %46

44:                                               ; preds = %3
  %45 = call %struct.dtfs_file* (...) @dtfs_newfile()
  store %struct.dtfs_file* %45, %struct.dtfs_file** %7, align 8
  br label %46

46:                                               ; preds = %44, %39
  %47 = load %struct.puffs_node*, %struct.puffs_node** %4, align 8
  %48 = call %struct.dtfs_mount* @puffs_pn_getmntspecific(%struct.puffs_node* %47)
  store %struct.dtfs_mount* %48, %struct.dtfs_mount** %9, align 8
  %49 = load %struct.puffs_node*, %struct.puffs_node** %4, align 8
  %50 = getelementptr inbounds %struct.puffs_node, %struct.puffs_node* %49, i32 0, i32 1
  %51 = load i32*, i32** %50, align 8
  %52 = load %struct.dtfs_file*, %struct.dtfs_file** %7, align 8
  %53 = call %struct.puffs_node* @puffs_pn_new(i32* %51, %struct.dtfs_file* %52)
  store %struct.puffs_node* %53, %struct.puffs_node** %10, align 8
  %54 = load %struct.puffs_node*, %struct.puffs_node** %10, align 8
  %55 = icmp eq %struct.puffs_node* %54, null
  br i1 %55, label %56, label %58

56:                                               ; preds = %46
  %57 = call i32 @errx(i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  br label %58

58:                                               ; preds = %56, %46
  %59 = load %struct.puffs_node*, %struct.puffs_node** %10, align 8
  %60 = getelementptr inbounds %struct.puffs_node, %struct.puffs_node* %59, i32 0, i32 0
  %61 = load i32, i32* %6, align 4
  %62 = load %struct.dtfs_mount*, %struct.dtfs_mount** %9, align 8
  %63 = getelementptr inbounds %struct.dtfs_mount, %struct.dtfs_mount* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %63, align 4
  %66 = call i32 @dtfs_baseattrs(%struct.TYPE_2__* %60, i32 %61, i32 %64)
  %67 = call %struct.dtfs_dirent* @emalloc(i32 24)
  store %struct.dtfs_dirent* %67, %struct.dtfs_dirent** %8, align 8
  %68 = load %struct.puffs_node*, %struct.puffs_node** %10, align 8
  %69 = load %struct.dtfs_dirent*, %struct.dtfs_dirent** %8, align 8
  %70 = getelementptr inbounds %struct.dtfs_dirent, %struct.dtfs_dirent* %69, i32 0, i32 3
  store %struct.puffs_node* %68, %struct.puffs_node** %70, align 8
  %71 = load %struct.puffs_cn*, %struct.puffs_cn** %5, align 8
  %72 = getelementptr inbounds %struct.puffs_cn, %struct.puffs_cn* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.puffs_cn*, %struct.puffs_cn** %5, align 8
  %75 = getelementptr inbounds %struct.puffs_cn, %struct.puffs_cn* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @estrndup(i32 %73, i32 %76)
  %78 = load %struct.dtfs_dirent*, %struct.dtfs_dirent** %8, align 8
  %79 = getelementptr inbounds %struct.dtfs_dirent, %struct.dtfs_dirent* %78, i32 0, i32 1
  store i32 %77, i32* %79, align 8
  %80 = load %struct.dtfs_dirent*, %struct.dtfs_dirent** %8, align 8
  %81 = getelementptr inbounds %struct.dtfs_dirent, %struct.dtfs_dirent* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 8
  %83 = call i32 @strlen(i32 %82)
  %84 = load %struct.dtfs_dirent*, %struct.dtfs_dirent** %8, align 8
  %85 = getelementptr inbounds %struct.dtfs_dirent, %struct.dtfs_dirent* %84, i32 0, i32 2
  store i32 %83, i32* %85, align 4
  %86 = load %struct.puffs_node*, %struct.puffs_node** %4, align 8
  %87 = load %struct.dtfs_dirent*, %struct.dtfs_dirent** %8, align 8
  %88 = getelementptr inbounds %struct.dtfs_dirent, %struct.dtfs_dirent* %87, i32 0, i32 0
  store %struct.puffs_node* %86, %struct.puffs_node** %88, align 8
  %89 = load %struct.puffs_node*, %struct.puffs_node** %4, align 8
  %90 = load %struct.dtfs_dirent*, %struct.dtfs_dirent** %8, align 8
  %91 = call i32 @dtfs_adddent(%struct.puffs_node* %89, %struct.dtfs_dirent* %90)
  %92 = load i64, i64* %11, align 8
  %93 = load %struct.puffs_node*, %struct.puffs_node** %10, align 8
  %94 = getelementptr inbounds %struct.puffs_node, %struct.puffs_node* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %94, i32 0, i32 2
  store i64 %92, i64* %95, align 8
  %96 = load %struct.puffs_node*, %struct.puffs_node** %4, align 8
  %97 = getelementptr inbounds %struct.puffs_node, %struct.puffs_node* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 8
  %100 = load %struct.puffs_node*, %struct.puffs_node** %10, align 8
  %101 = getelementptr inbounds %struct.puffs_node, %struct.puffs_node* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %101, i32 0, i32 1
  store i32 %99, i32* %102, align 8
  %103 = load %struct.puffs_node*, %struct.puffs_node** %10, align 8
  ret %struct.puffs_node* %103
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @puffs_cred_getuid(i32, i64*) #1

declare dso_local %struct.dtfs_file* @dtfs_newdir(...) #1

declare dso_local %struct.dtfs_file* @dtfs_newfile(...) #1

declare dso_local %struct.dtfs_mount* @puffs_pn_getmntspecific(%struct.puffs_node*) #1

declare dso_local %struct.puffs_node* @puffs_pn_new(i32*, %struct.dtfs_file*) #1

declare dso_local i32 @errx(i32, i8*) #1

declare dso_local i32 @dtfs_baseattrs(%struct.TYPE_2__*, i32, i32) #1

declare dso_local %struct.dtfs_dirent* @emalloc(i32) #1

declare dso_local i32 @estrndup(i32, i32) #1

declare dso_local i32 @strlen(i32) #1

declare dso_local i32 @dtfs_adddent(%struct.puffs_node*, %struct.dtfs_dirent*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
