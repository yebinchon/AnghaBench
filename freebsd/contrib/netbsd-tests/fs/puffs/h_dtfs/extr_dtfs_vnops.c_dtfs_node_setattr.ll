; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/netbsd-tests/fs/puffs/h_dtfs/extr_dtfs_vnops.c_dtfs_node_setattr.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/netbsd-tests/fs/puffs/h_dtfs/extr_dtfs_vnops.c_dtfs_node_setattr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.puffs_usermount = type { i32 }
%struct.vattr = type { i64, i64, i64, i64, i32, i64, %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i64, i64 }
%struct.TYPE_4__ = type { i64, i64 }
%struct.puffs_cred = type { i32 }
%struct.puffs_node = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i64, i32, i32, i32 }

@PUFFS_VNOVAL = common dso_local global i64 0, align 8
@EOPNOTSUPP = common dso_local global i32 0, align 4
@VA_UTIMES_NULL = common dso_local global i32 0, align 4
@EISDIR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dtfs_node_setattr(%struct.puffs_usermount* %0, i8* %1, %struct.vattr* %2, %struct.puffs_cred* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.puffs_usermount*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.vattr*, align 8
  %9 = alloca %struct.puffs_cred*, align 8
  %10 = alloca %struct.puffs_node*, align 8
  %11 = alloca i32, align 4
  store %struct.puffs_usermount* %0, %struct.puffs_usermount** %6, align 8
  store i8* %1, i8** %7, align 8
  store %struct.vattr* %2, %struct.vattr** %8, align 8
  store %struct.puffs_cred* %3, %struct.puffs_cred** %9, align 8
  %12 = load i8*, i8** %7, align 8
  %13 = bitcast i8* %12 to %struct.puffs_node*
  store %struct.puffs_node* %13, %struct.puffs_node** %10, align 8
  %14 = load %struct.vattr*, %struct.vattr** %8, align 8
  %15 = getelementptr inbounds %struct.vattr, %struct.vattr* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @PUFFS_VNOVAL, align 8
  %18 = icmp ne i64 %16, %17
  br i1 %18, label %19, label %21

19:                                               ; preds = %4
  %20 = load i32, i32* @EOPNOTSUPP, align 4
  store i32 %20, i32* %5, align 4
  br label %171

21:                                               ; preds = %4
  %22 = load %struct.vattr*, %struct.vattr** %8, align 8
  %23 = getelementptr inbounds %struct.vattr, %struct.vattr* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @PUFFS_VNOVAL, align 8
  %26 = icmp ne i64 %24, %25
  br i1 %26, label %33, label %27

27:                                               ; preds = %21
  %28 = load %struct.vattr*, %struct.vattr** %8, align 8
  %29 = getelementptr inbounds %struct.vattr, %struct.vattr* %28, i32 0, i32 2
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @PUFFS_VNOVAL, align 8
  %32 = icmp ne i64 %30, %31
  br i1 %32, label %33, label %55

33:                                               ; preds = %27, %21
  %34 = load %struct.puffs_node*, %struct.puffs_node** %10, align 8
  %35 = getelementptr inbounds %struct.puffs_node, %struct.puffs_node* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 4
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.puffs_node*, %struct.puffs_node** %10, align 8
  %39 = getelementptr inbounds %struct.puffs_node, %struct.puffs_node* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.vattr*, %struct.vattr** %8, align 8
  %43 = getelementptr inbounds %struct.vattr, %struct.vattr* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = load %struct.vattr*, %struct.vattr** %8, align 8
  %46 = getelementptr inbounds %struct.vattr, %struct.vattr* %45, i32 0, i32 2
  %47 = load i64, i64* %46, align 8
  %48 = load %struct.puffs_cred*, %struct.puffs_cred** %9, align 8
  %49 = call i32 @puffs_access_chown(i32 %37, i32 %41, i64 %44, i64 %47, %struct.puffs_cred* %48)
  store i32 %49, i32* %11, align 4
  %50 = load i32, i32* %11, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %33
  %53 = load i32, i32* %11, align 4
  store i32 %53, i32* %5, align 4
  br label %171

54:                                               ; preds = %33
  br label %55

55:                                               ; preds = %54, %27
  %56 = load %struct.vattr*, %struct.vattr** %8, align 8
  %57 = getelementptr inbounds %struct.vattr, %struct.vattr* %56, i32 0, i32 3
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @PUFFS_VNOVAL, align 8
  %60 = icmp ne i64 %58, %59
  br i1 %60, label %61, label %84

61:                                               ; preds = %55
  %62 = load %struct.puffs_node*, %struct.puffs_node** %10, align 8
  %63 = getelementptr inbounds %struct.puffs_node, %struct.puffs_node* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 4
  %65 = load i32, i32* %64, align 8
  %66 = load %struct.puffs_node*, %struct.puffs_node** %10, align 8
  %67 = getelementptr inbounds %struct.puffs_node, %struct.puffs_node* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 3
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.puffs_node*, %struct.puffs_node** %10, align 8
  %71 = getelementptr inbounds %struct.puffs_node, %struct.puffs_node* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = load %struct.vattr*, %struct.vattr** %8, align 8
  %75 = getelementptr inbounds %struct.vattr, %struct.vattr* %74, i32 0, i32 3
  %76 = load i64, i64* %75, align 8
  %77 = load %struct.puffs_cred*, %struct.puffs_cred** %9, align 8
  %78 = call i32 @puffs_access_chmod(i32 %65, i32 %69, i32 %73, i64 %76, %struct.puffs_cred* %77)
  store i32 %78, i32* %11, align 4
  %79 = load i32, i32* %11, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %83

81:                                               ; preds = %61
  %82 = load i32, i32* %11, align 4
  store i32 %82, i32* %5, align 4
  br label %171

83:                                               ; preds = %61
  br label %84

84:                                               ; preds = %83, %55
  %85 = load %struct.vattr*, %struct.vattr** %8, align 8
  %86 = getelementptr inbounds %struct.vattr, %struct.vattr* %85, i32 0, i32 7
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = load i64, i64* @PUFFS_VNOVAL, align 8
  %90 = icmp ne i64 %88, %89
  br i1 %90, label %91, label %98

91:                                               ; preds = %84
  %92 = load %struct.vattr*, %struct.vattr** %8, align 8
  %93 = getelementptr inbounds %struct.vattr, %struct.vattr* %92, i32 0, i32 7
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i32 0, i32 1
  %95 = load i64, i64* %94, align 8
  %96 = load i64, i64* @PUFFS_VNOVAL, align 8
  %97 = icmp ne i64 %95, %96
  br i1 %97, label %112, label %98

98:                                               ; preds = %91, %84
  %99 = load %struct.vattr*, %struct.vattr** %8, align 8
  %100 = getelementptr inbounds %struct.vattr, %struct.vattr* %99, i32 0, i32 6
  %101 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = load i64, i64* @PUFFS_VNOVAL, align 8
  %104 = icmp ne i64 %102, %103
  br i1 %104, label %105, label %137

105:                                              ; preds = %98
  %106 = load %struct.vattr*, %struct.vattr** %8, align 8
  %107 = getelementptr inbounds %struct.vattr, %struct.vattr* %106, i32 0, i32 6
  %108 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %107, i32 0, i32 1
  %109 = load i64, i64* %108, align 8
  %110 = load i64, i64* @PUFFS_VNOVAL, align 8
  %111 = icmp ne i64 %109, %110
  br i1 %111, label %112, label %137

112:                                              ; preds = %105, %91
  %113 = load %struct.puffs_node*, %struct.puffs_node** %10, align 8
  %114 = getelementptr inbounds %struct.puffs_node, %struct.puffs_node* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %114, i32 0, i32 4
  %116 = load i32, i32* %115, align 8
  %117 = load %struct.puffs_node*, %struct.puffs_node** %10, align 8
  %118 = getelementptr inbounds %struct.puffs_node, %struct.puffs_node* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %118, i32 0, i32 3
  %120 = load i32, i32* %119, align 4
  %121 = load %struct.puffs_node*, %struct.puffs_node** %10, align 8
  %122 = getelementptr inbounds %struct.puffs_node, %struct.puffs_node* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %122, i32 0, i32 2
  %124 = load i32, i32* %123, align 8
  %125 = load %struct.vattr*, %struct.vattr** %8, align 8
  %126 = getelementptr inbounds %struct.vattr, %struct.vattr* %125, i32 0, i32 4
  %127 = load i32, i32* %126, align 8
  %128 = load i32, i32* @VA_UTIMES_NULL, align 4
  %129 = and i32 %127, %128
  %130 = load %struct.puffs_cred*, %struct.puffs_cred** %9, align 8
  %131 = call i32 @puffs_access_times(i32 %116, i32 %120, i32 %124, i32 %129, %struct.puffs_cred* %130)
  store i32 %131, i32* %11, align 4
  %132 = load i32, i32* %11, align 4
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %136

134:                                              ; preds = %112
  %135 = load i32, i32* %11, align 4
  store i32 %135, i32* %5, align 4
  br label %171

136:                                              ; preds = %112
  br label %137

137:                                              ; preds = %136, %105, %98
  %138 = load %struct.vattr*, %struct.vattr** %8, align 8
  %139 = getelementptr inbounds %struct.vattr, %struct.vattr* %138, i32 0, i32 5
  %140 = load i64, i64* %139, align 8
  %141 = load i64, i64* @PUFFS_VNOVAL, align 8
  %142 = icmp ne i64 %140, %141
  br i1 %142, label %143, label %166

143:                                              ; preds = %137
  %144 = load %struct.puffs_node*, %struct.puffs_node** %10, align 8
  %145 = getelementptr inbounds %struct.puffs_node, %struct.puffs_node* %144, i32 0, i32 0
  %146 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 8
  switch i32 %147, label %163 [
    i32 128, label %148
    i32 132, label %160
    i32 131, label %160
    i32 129, label %160
    i32 130, label %161
  ]

148:                                              ; preds = %143
  %149 = load %struct.puffs_node*, %struct.puffs_node** %10, align 8
  %150 = load %struct.vattr*, %struct.vattr** %8, align 8
  %151 = getelementptr inbounds %struct.vattr, %struct.vattr* %150, i32 0, i32 5
  %152 = load i64, i64* %151, align 8
  %153 = call i32 @dtfs_setsize(%struct.puffs_node* %149, i64 %152)
  %154 = load %struct.vattr*, %struct.vattr** %8, align 8
  %155 = getelementptr inbounds %struct.vattr, %struct.vattr* %154, i32 0, i32 5
  %156 = load i64, i64* %155, align 8
  %157 = load %struct.puffs_node*, %struct.puffs_node** %10, align 8
  %158 = getelementptr inbounds %struct.puffs_node, %struct.puffs_node* %157, i32 0, i32 0
  %159 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %158, i32 0, i32 1
  store i64 %156, i64* %159, align 8
  br label %165

160:                                              ; preds = %143, %143, %143
  br label %165

161:                                              ; preds = %143
  %162 = load i32, i32* @EISDIR, align 4
  store i32 %162, i32* %5, align 4
  br label %171

163:                                              ; preds = %143
  %164 = load i32, i32* @EOPNOTSUPP, align 4
  store i32 %164, i32* %5, align 4
  br label %171

165:                                              ; preds = %160, %148
  br label %166

166:                                              ; preds = %165, %137
  %167 = load %struct.puffs_node*, %struct.puffs_node** %10, align 8
  %168 = getelementptr inbounds %struct.puffs_node, %struct.puffs_node* %167, i32 0, i32 0
  %169 = load %struct.vattr*, %struct.vattr** %8, align 8
  %170 = call i32 @puffs_setvattr(%struct.TYPE_6__* %168, %struct.vattr* %169)
  store i32 0, i32* %5, align 4
  br label %171

171:                                              ; preds = %166, %163, %161, %134, %81, %52, %19
  %172 = load i32, i32* %5, align 4
  ret i32 %172
}

declare dso_local i32 @puffs_access_chown(i32, i32, i64, i64, %struct.puffs_cred*) #1

declare dso_local i32 @puffs_access_chmod(i32, i32, i32, i64, %struct.puffs_cred*) #1

declare dso_local i32 @puffs_access_times(i32, i32, i32, i32, %struct.puffs_cred*) #1

declare dso_local i32 @dtfs_setsize(%struct.puffs_node*, i64) #1

declare dso_local i32 @puffs_setvattr(%struct.TYPE_6__*, %struct.vattr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
