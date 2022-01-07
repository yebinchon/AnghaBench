; ModuleID = '/home/carl/AnghaBench/freebsd/sys/compat/linuxkpi/common/src/extr_linux_compat.c_linux_file_mmap.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/compat/linuxkpi/common/src/extr_linux_compat.c_linux_file_mmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32, i64 }
%struct.thread = type { i32 }
%struct.linux_file = type { %struct.vnode* }
%struct.vnode = type { %struct.mount* }
%struct.mount = type { i32 }
%struct.file_operations = type { i32 }
%struct.linux_cdev = type { i32 }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@MNT_NOEXEC = common dso_local global i32 0, align 4
@VM_PROT_NONE = common dso_local global i32 0, align 4
@VM_PROT_EXECUTE = common dso_local global i32 0, align 4
@EACCES = common dso_local global i32 0, align 4
@FREAD = common dso_local global i32 0, align 4
@VM_PROT_READ = common dso_local global i32 0, align 4
@MAP_SHARED = common dso_local global i32 0, align 4
@FWRITE = common dso_local global i32 0, align 4
@VM_PROT_WRITE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i32, i32*, i32, i32, i32, i32, i32, %struct.thread*)* @linux_file_mmap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @linux_file_mmap(%struct.file* %0, i32 %1, i32* %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7, %struct.thread* %8) #0 {
  %10 = alloca i32, align 4
  %11 = alloca %struct.file*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.thread*, align 8
  %20 = alloca %struct.linux_file*, align 8
  %21 = alloca %struct.file_operations*, align 8
  %22 = alloca %struct.linux_cdev*, align 8
  %23 = alloca %struct.mount*, align 8
  %24 = alloca %struct.vnode*, align 8
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %11, align 8
  store i32 %1, i32* %12, align 4
  store i32* %2, i32** %13, align 8
  store i32 %3, i32* %14, align 4
  store i32 %4, i32* %15, align 4
  store i32 %5, i32* %16, align 4
  store i32 %6, i32* %17, align 4
  store i32 %7, i32* %18, align 4
  store %struct.thread* %8, %struct.thread** %19, align 8
  %28 = load %struct.file*, %struct.file** %11, align 8
  %29 = getelementptr inbounds %struct.file, %struct.file* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = inttoptr i64 %30 to %struct.linux_file*
  store %struct.linux_file* %31, %struct.linux_file** %20, align 8
  %32 = load %struct.linux_file*, %struct.linux_file** %20, align 8
  %33 = getelementptr inbounds %struct.linux_file, %struct.linux_file* %32, i32 0, i32 0
  %34 = load %struct.vnode*, %struct.vnode** %33, align 8
  store %struct.vnode* %34, %struct.vnode** %24, align 8
  %35 = load %struct.vnode*, %struct.vnode** %24, align 8
  %36 = icmp eq %struct.vnode* %35, null
  br i1 %36, label %37, label %39

37:                                               ; preds = %9
  %38 = load i32, i32* @EOPNOTSUPP, align 4
  store i32 %38, i32* %10, align 4
  br label %144

39:                                               ; preds = %9
  %40 = load %struct.vnode*, %struct.vnode** %24, align 8
  %41 = getelementptr inbounds %struct.vnode, %struct.vnode* %40, i32 0, i32 0
  %42 = load %struct.mount*, %struct.mount** %41, align 8
  store %struct.mount* %42, %struct.mount** %23, align 8
  %43 = load %struct.mount*, %struct.mount** %23, align 8
  %44 = icmp ne %struct.mount* %43, null
  br i1 %44, label %45, label %61

45:                                               ; preds = %39
  %46 = load %struct.mount*, %struct.mount** %23, align 8
  %47 = getelementptr inbounds %struct.mount, %struct.mount* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @MNT_NOEXEC, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %61

52:                                               ; preds = %45
  %53 = load i32, i32* @VM_PROT_NONE, align 4
  store i32 %53, i32* %26, align 4
  %54 = load i32, i32* %15, align 4
  %55 = load i32, i32* @VM_PROT_EXECUTE, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %52
  %59 = load i32, i32* @EACCES, align 4
  store i32 %59, i32* %10, align 4
  br label %144

60:                                               ; preds = %52
  br label %63

61:                                               ; preds = %45, %39
  %62 = load i32, i32* @VM_PROT_EXECUTE, align 4
  store i32 %62, i32* %26, align 4
  br label %63

63:                                               ; preds = %61, %60
  %64 = load %struct.file*, %struct.file** %11, align 8
  %65 = getelementptr inbounds %struct.file, %struct.file* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = load i32, i32* @FREAD, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %74

70:                                               ; preds = %63
  %71 = load i32, i32* @VM_PROT_READ, align 4
  %72 = load i32, i32* %26, align 4
  %73 = or i32 %72, %71
  store i32 %73, i32* %26, align 4
  br label %82

74:                                               ; preds = %63
  %75 = load i32, i32* %15, align 4
  %76 = load i32, i32* @VM_PROT_READ, align 4
  %77 = and i32 %75, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %81

79:                                               ; preds = %74
  %80 = load i32, i32* @EACCES, align 4
  store i32 %80, i32* %10, align 4
  br label %144

81:                                               ; preds = %74
  br label %82

82:                                               ; preds = %81, %70
  %83 = load i32, i32* %17, align 4
  %84 = load i32, i32* @MAP_SHARED, align 4
  %85 = and i32 %83, %84
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %107

87:                                               ; preds = %82
  %88 = load %struct.file*, %struct.file** %11, align 8
  %89 = getelementptr inbounds %struct.file, %struct.file* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = load i32, i32* @FWRITE, align 4
  %92 = and i32 %90, %91
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %98

94:                                               ; preds = %87
  %95 = load i32, i32* @VM_PROT_WRITE, align 4
  %96 = load i32, i32* %26, align 4
  %97 = or i32 %96, %95
  store i32 %97, i32* %26, align 4
  br label %106

98:                                               ; preds = %87
  %99 = load i32, i32* %15, align 4
  %100 = load i32, i32* @VM_PROT_WRITE, align 4
  %101 = and i32 %99, %100
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %105

103:                                              ; preds = %98
  %104 = load i32, i32* @EACCES, align 4
  store i32 %104, i32* %10, align 4
  br label %144

105:                                              ; preds = %98
  br label %106

106:                                              ; preds = %105, %94
  br label %107

107:                                              ; preds = %106, %82
  %108 = load i32, i32* %16, align 4
  %109 = load i32, i32* %26, align 4
  %110 = and i32 %109, %108
  store i32 %110, i32* %26, align 4
  %111 = load %struct.linux_file*, %struct.linux_file** %20, align 8
  %112 = call i32 @linux_get_fop(%struct.linux_file* %111, %struct.file_operations** %21, %struct.linux_cdev** %22)
  %113 = load %struct.thread*, %struct.thread** %19, align 8
  %114 = load i32, i32* %14, align 4
  %115 = load i32, i32* %15, align 4
  %116 = load %struct.file*, %struct.file** %11, align 8
  %117 = load %struct.file_operations*, %struct.file_operations** %21, align 8
  %118 = call i32 @linux_file_mmap_sub(%struct.thread* %113, i32 %114, i32 %115, i32* %26, i32* %17, %struct.file* %116, i32* %18, %struct.file_operations* %117, i32* %25)
  store i32 %118, i32* %27, align 4
  %119 = load i32, i32* %27, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %122

121:                                              ; preds = %107
  br label %140

122:                                              ; preds = %107
  %123 = load i32, i32* %12, align 4
  %124 = load i32*, i32** %13, align 8
  %125 = load i32, i32* %14, align 4
  %126 = load i32, i32* %15, align 4
  %127 = load i32, i32* %26, align 4
  %128 = load i32, i32* %17, align 4
  %129 = load i32, i32* %25, align 4
  %130 = load i32, i32* %18, align 4
  %131 = load i32, i32* @FALSE, align 4
  %132 = load %struct.thread*, %struct.thread** %19, align 8
  %133 = call i32 @vm_mmap_object(i32 %123, i32* %124, i32 %125, i32 %126, i32 %127, i32 %128, i32 %129, i32 %130, i32 %131, %struct.thread* %132)
  store i32 %133, i32* %27, align 4
  %134 = load i32, i32* %27, align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %139

136:                                              ; preds = %122
  %137 = load i32, i32* %25, align 4
  %138 = call i32 @vm_object_deallocate(i32 %137)
  br label %139

139:                                              ; preds = %136, %122
  br label %140

140:                                              ; preds = %139, %121
  %141 = load %struct.linux_cdev*, %struct.linux_cdev** %22, align 8
  %142 = call i32 @linux_drop_fop(%struct.linux_cdev* %141)
  %143 = load i32, i32* %27, align 4
  store i32 %143, i32* %10, align 4
  br label %144

144:                                              ; preds = %140, %103, %79, %58, %37
  %145 = load i32, i32* %10, align 4
  ret i32 %145
}

declare dso_local i32 @linux_get_fop(%struct.linux_file*, %struct.file_operations**, %struct.linux_cdev**) #1

declare dso_local i32 @linux_file_mmap_sub(%struct.thread*, i32, i32, i32*, i32*, %struct.file*, i32*, %struct.file_operations*, i32*) #1

declare dso_local i32 @vm_mmap_object(i32, i32*, i32, i32, i32, i32, i32, i32, i32, %struct.thread*) #1

declare dso_local i32 @vm_object_deallocate(i32) #1

declare dso_local i32 @linux_drop_fop(%struct.linux_cdev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
