; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/netbsd-tests/fs/puffs/h_dtfs/extr_dtfs_vnops.c_dtfs_node_rename.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/netbsd-tests/fs/puffs/h_dtfs/extr_dtfs_vnops.c_dtfs_node_rename.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.puffs_usermount = type { i32 }
%struct.puffs_cn = type { i32, i8* }
%struct.dtfs_dirent = type { i32, i32 }
%struct.dtfs_file = type { i32 }
%struct.puffs_node = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@VDIR = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@ENOTEMPTY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dtfs_node_rename(%struct.puffs_usermount* %0, i8* %1, i8* %2, %struct.puffs_cn* %3, i8* %4, i8* %5, %struct.puffs_cn* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.puffs_usermount*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.puffs_cn*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca %struct.puffs_cn*, align 8
  %16 = alloca %struct.dtfs_dirent*, align 8
  %17 = alloca %struct.dtfs_file*, align 8
  %18 = alloca %struct.puffs_node*, align 8
  %19 = alloca %struct.puffs_node*, align 8
  %20 = alloca %struct.puffs_node*, align 8
  %21 = alloca %struct.puffs_node*, align 8
  store %struct.puffs_usermount* %0, %struct.puffs_usermount** %9, align 8
  store i8* %1, i8** %10, align 8
  store i8* %2, i8** %11, align 8
  store %struct.puffs_cn* %3, %struct.puffs_cn** %12, align 8
  store i8* %4, i8** %13, align 8
  store i8* %5, i8** %14, align 8
  store %struct.puffs_cn* %6, %struct.puffs_cn** %15, align 8
  %22 = load i8*, i8** %10, align 8
  %23 = bitcast i8* %22 to %struct.puffs_node*
  store %struct.puffs_node* %23, %struct.puffs_node** %18, align 8
  %24 = load i8*, i8** %11, align 8
  %25 = bitcast i8* %24 to %struct.puffs_node*
  store %struct.puffs_node* %25, %struct.puffs_node** %19, align 8
  %26 = load i8*, i8** %13, align 8
  %27 = bitcast i8* %26 to %struct.puffs_node*
  store %struct.puffs_node* %27, %struct.puffs_node** %20, align 8
  %28 = load i8*, i8** %14, align 8
  %29 = bitcast i8* %28 to %struct.puffs_node*
  store %struct.puffs_node* %29, %struct.puffs_node** %21, align 8
  %30 = load %struct.puffs_node*, %struct.puffs_node** %19, align 8
  %31 = getelementptr inbounds %struct.puffs_node, %struct.puffs_node* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @VDIR, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %71

36:                                               ; preds = %7
  %37 = load %struct.puffs_node*, %struct.puffs_node** %20, align 8
  %38 = load %struct.puffs_node*, %struct.puffs_node** %19, align 8
  %39 = call i64 @dtfs_isunder(%struct.puffs_node* %37, %struct.puffs_node* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %36
  %42 = load i32, i32* @EINVAL, align 4
  store i32 %42, i32* %8, align 4
  br label %143

43:                                               ; preds = %36
  %44 = load %struct.puffs_cn*, %struct.puffs_cn** %12, align 8
  %45 = getelementptr inbounds %struct.puffs_cn, %struct.puffs_cn* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = icmp eq i32 %46, 1
  br i1 %47, label %48, label %56

48:                                               ; preds = %43
  %49 = load %struct.puffs_cn*, %struct.puffs_cn** %12, align 8
  %50 = getelementptr inbounds %struct.puffs_cn, %struct.puffs_cn* %49, i32 0, i32 1
  %51 = load i8*, i8** %50, align 8
  %52 = getelementptr inbounds i8, i8* %51, i64 0
  %53 = load i8, i8* %52, align 1
  %54 = sext i8 %53 to i32
  %55 = icmp eq i32 %54, 46
  br i1 %55, label %68, label %56

56:                                               ; preds = %48, %43
  %57 = load i8*, i8** %10, align 8
  %58 = load i8*, i8** %11, align 8
  %59 = icmp eq i8* %57, %58
  br i1 %59, label %68, label %60

60:                                               ; preds = %56
  %61 = load %struct.puffs_cn*, %struct.puffs_cn** %12, align 8
  %62 = call i64 @PCNISDOTDOT(%struct.puffs_cn* %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %68, label %64

64:                                               ; preds = %60
  %65 = load %struct.puffs_cn*, %struct.puffs_cn** %15, align 8
  %66 = call i64 @PCNISDOTDOT(%struct.puffs_cn* %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %64, %60, %56, %48
  %69 = load i32, i32* @EINVAL, align 4
  store i32 %69, i32* %8, align 4
  br label %143

70:                                               ; preds = %64
  br label %71

71:                                               ; preds = %70, %7
  %72 = load %struct.puffs_node*, %struct.puffs_node** %18, align 8
  %73 = call i32 @DTFS_PTOF(%struct.puffs_node* %72)
  %74 = load %struct.puffs_cn*, %struct.puffs_cn** %12, align 8
  %75 = getelementptr inbounds %struct.puffs_cn, %struct.puffs_cn* %74, i32 0, i32 1
  %76 = load i8*, i8** %75, align 8
  %77 = load %struct.puffs_cn*, %struct.puffs_cn** %12, align 8
  %78 = getelementptr inbounds %struct.puffs_cn, %struct.puffs_cn* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = call %struct.dtfs_dirent* @dtfs_dirgetbyname(i32 %73, i8* %76, i32 %79)
  store %struct.dtfs_dirent* %80, %struct.dtfs_dirent** %16, align 8
  %81 = load %struct.dtfs_dirent*, %struct.dtfs_dirent** %16, align 8
  %82 = icmp eq %struct.dtfs_dirent* %81, null
  br i1 %82, label %83, label %85

83:                                               ; preds = %71
  %84 = load i32, i32* @ENOENT, align 4
  store i32 %84, i32* %8, align 4
  br label %143

85:                                               ; preds = %71
  %86 = load %struct.puffs_node*, %struct.puffs_node** %21, align 8
  %87 = icmp ne %struct.puffs_node* %86, null
  br i1 %87, label %88, label %115

88:                                               ; preds = %85
  %89 = load %struct.puffs_node*, %struct.puffs_node** %21, align 8
  %90 = getelementptr inbounds %struct.puffs_node, %struct.puffs_node* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = load i64, i64* @VDIR, align 8
  %94 = icmp eq i64 %92, %93
  br i1 %94, label %95, label %105

95:                                               ; preds = %88
  %96 = load %struct.puffs_node*, %struct.puffs_node** %21, align 8
  %97 = call %struct.dtfs_file* @DTFS_CTOF(%struct.puffs_node* %96)
  store %struct.dtfs_file* %97, %struct.dtfs_file** %17, align 8
  %98 = load %struct.dtfs_file*, %struct.dtfs_file** %17, align 8
  %99 = getelementptr inbounds %struct.dtfs_file, %struct.dtfs_file* %98, i32 0, i32 0
  %100 = call i32 @LIST_EMPTY(i32* %99)
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %104, label %102

102:                                              ; preds = %95
  %103 = load i32, i32* @ENOTEMPTY, align 4
  store i32 %103, i32* %8, align 4
  br label %143

104:                                              ; preds = %95
  br label %105

105:                                              ; preds = %104, %88
  %106 = load %struct.puffs_node*, %struct.puffs_node** %21, align 8
  %107 = load %struct.puffs_node*, %struct.puffs_node** %20, align 8
  %108 = load %struct.puffs_cn*, %struct.puffs_cn** %15, align 8
  %109 = getelementptr inbounds %struct.puffs_cn, %struct.puffs_cn* %108, i32 0, i32 1
  %110 = load i8*, i8** %109, align 8
  %111 = load %struct.puffs_cn*, %struct.puffs_cn** %15, align 8
  %112 = getelementptr inbounds %struct.puffs_cn, %struct.puffs_cn* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = call i32 @dtfs_nukenode(%struct.puffs_node* %106, %struct.puffs_node* %107, i8* %110, i32 %113)
  br label %115

115:                                              ; preds = %105, %85
  %116 = load %struct.puffs_node*, %struct.puffs_node** %18, align 8
  %117 = load %struct.dtfs_dirent*, %struct.dtfs_dirent** %16, align 8
  %118 = call i32 @dtfs_removedent(%struct.puffs_node* %116, %struct.dtfs_dirent* %117)
  %119 = load %struct.puffs_node*, %struct.puffs_node** %20, align 8
  %120 = load %struct.dtfs_dirent*, %struct.dtfs_dirent** %16, align 8
  %121 = call i32 @dtfs_adddent(%struct.puffs_node* %119, %struct.dtfs_dirent* %120)
  %122 = load %struct.dtfs_dirent*, %struct.dtfs_dirent** %16, align 8
  %123 = getelementptr inbounds %struct.dtfs_dirent, %struct.dtfs_dirent* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = call i32 @free(i32 %124)
  %126 = load %struct.puffs_cn*, %struct.puffs_cn** %15, align 8
  %127 = getelementptr inbounds %struct.puffs_cn, %struct.puffs_cn* %126, i32 0, i32 1
  %128 = load i8*, i8** %127, align 8
  %129 = load %struct.puffs_cn*, %struct.puffs_cn** %15, align 8
  %130 = getelementptr inbounds %struct.puffs_cn, %struct.puffs_cn* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 8
  %132 = call i32 @estrndup(i8* %128, i32 %131)
  %133 = load %struct.dtfs_dirent*, %struct.dtfs_dirent** %16, align 8
  %134 = getelementptr inbounds %struct.dtfs_dirent, %struct.dtfs_dirent* %133, i32 0, i32 0
  store i32 %132, i32* %134, align 4
  %135 = load %struct.dtfs_dirent*, %struct.dtfs_dirent** %16, align 8
  %136 = getelementptr inbounds %struct.dtfs_dirent, %struct.dtfs_dirent* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 4
  %138 = call i32 @strlen(i32 %137)
  %139 = load %struct.dtfs_dirent*, %struct.dtfs_dirent** %16, align 8
  %140 = getelementptr inbounds %struct.dtfs_dirent, %struct.dtfs_dirent* %139, i32 0, i32 1
  store i32 %138, i32* %140, align 4
  %141 = load i8*, i8** %11, align 8
  %142 = call i32 @dtfs_updatetimes(i8* %141, i32 0, i32 1, i32 0)
  store i32 0, i32* %8, align 4
  br label %143

143:                                              ; preds = %115, %102, %83, %68, %41
  %144 = load i32, i32* %8, align 4
  ret i32 %144
}

declare dso_local i64 @dtfs_isunder(%struct.puffs_node*, %struct.puffs_node*) #1

declare dso_local i64 @PCNISDOTDOT(%struct.puffs_cn*) #1

declare dso_local %struct.dtfs_dirent* @dtfs_dirgetbyname(i32, i8*, i32) #1

declare dso_local i32 @DTFS_PTOF(%struct.puffs_node*) #1

declare dso_local %struct.dtfs_file* @DTFS_CTOF(%struct.puffs_node*) #1

declare dso_local i32 @LIST_EMPTY(i32*) #1

declare dso_local i32 @dtfs_nukenode(%struct.puffs_node*, %struct.puffs_node*, i8*, i32) #1

declare dso_local i32 @dtfs_removedent(%struct.puffs_node*, %struct.dtfs_dirent*) #1

declare dso_local i32 @dtfs_adddent(%struct.puffs_node*, %struct.dtfs_dirent*) #1

declare dso_local i32 @free(i32) #1

declare dso_local i32 @estrndup(i8*, i32) #1

declare dso_local i32 @strlen(i32) #1

declare dso_local i32 @dtfs_updatetimes(i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
