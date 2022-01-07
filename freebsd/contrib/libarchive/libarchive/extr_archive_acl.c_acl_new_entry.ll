; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_acl.c_acl_new_entry.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_acl.c_acl_new_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive_acl_entry = type { i32, i32, i32, i32, %struct.archive_acl_entry* }
%struct.archive_acl = type { i32, %struct.archive_acl_entry*, i32*, i32* }

@ARCHIVE_ENTRY_ACL_TYPE_NFS4 = common dso_local global i32 0, align 4
@ARCHIVE_ENTRY_ACL_PERMS_NFS4 = common dso_local global i32 0, align 4
@ARCHIVE_ENTRY_ACL_INHERITANCE_NFS4 = common dso_local global i32 0, align 4
@ARCHIVE_ENTRY_ACL_TYPE_POSIX1E = common dso_local global i32 0, align 4
@ARCHIVE_ENTRY_ACL_PERMS_POSIX1E = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.archive_acl_entry* (%struct.archive_acl*, i32, i32, i32, i32)* @acl_new_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.archive_acl_entry* @acl_new_entry(%struct.archive_acl* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.archive_acl_entry*, align 8
  %7 = alloca %struct.archive_acl*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.archive_acl_entry*, align 8
  %13 = alloca %struct.archive_acl_entry*, align 8
  store %struct.archive_acl* %0, %struct.archive_acl** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %14 = load i32, i32* %8, align 4
  %15 = load i32, i32* @ARCHIVE_ENTRY_ACL_TYPE_NFS4, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %37

18:                                               ; preds = %5
  %19 = load %struct.archive_acl*, %struct.archive_acl** %7, align 8
  %20 = getelementptr inbounds %struct.archive_acl, %struct.archive_acl* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @ARCHIVE_ENTRY_ACL_TYPE_NFS4, align 4
  %23 = xor i32 %22, -1
  %24 = and i32 %21, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %18
  store %struct.archive_acl_entry* null, %struct.archive_acl_entry** %6, align 8
  br label %179

27:                                               ; preds = %18
  %28 = load i32, i32* %9, align 4
  %29 = load i32, i32* @ARCHIVE_ENTRY_ACL_PERMS_NFS4, align 4
  %30 = load i32, i32* @ARCHIVE_ENTRY_ACL_INHERITANCE_NFS4, align 4
  %31 = or i32 %29, %30
  %32 = xor i32 %31, -1
  %33 = and i32 %28, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %27
  store %struct.archive_acl_entry* null, %struct.archive_acl_entry** %6, align 8
  br label %179

36:                                               ; preds = %27
  br label %61

37:                                               ; preds = %5
  %38 = load i32, i32* %8, align 4
  %39 = load i32, i32* @ARCHIVE_ENTRY_ACL_TYPE_POSIX1E, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %59

42:                                               ; preds = %37
  %43 = load %struct.archive_acl*, %struct.archive_acl** %7, align 8
  %44 = getelementptr inbounds %struct.archive_acl, %struct.archive_acl* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* @ARCHIVE_ENTRY_ACL_TYPE_POSIX1E, align 4
  %47 = xor i32 %46, -1
  %48 = and i32 %45, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %42
  store %struct.archive_acl_entry* null, %struct.archive_acl_entry** %6, align 8
  br label %179

51:                                               ; preds = %42
  %52 = load i32, i32* %9, align 4
  %53 = load i32, i32* @ARCHIVE_ENTRY_ACL_PERMS_POSIX1E, align 4
  %54 = xor i32 %53, -1
  %55 = and i32 %52, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %51
  store %struct.archive_acl_entry* null, %struct.archive_acl_entry** %6, align 8
  br label %179

58:                                               ; preds = %51
  br label %60

59:                                               ; preds = %37
  store %struct.archive_acl_entry* null, %struct.archive_acl_entry** %6, align 8
  br label %179

60:                                               ; preds = %58
  br label %61

61:                                               ; preds = %60, %36
  %62 = load i32, i32* %10, align 4
  switch i32 %62, label %80 [
    i32 129, label %63
    i32 128, label %63
    i32 133, label %63
    i32 132, label %63
    i32 131, label %64
    i32 130, label %64
    i32 134, label %72
  ]

63:                                               ; preds = %61, %61, %61, %61
  br label %81

64:                                               ; preds = %61, %61
  %65 = load i32, i32* %8, align 4
  %66 = load i32, i32* @ARCHIVE_ENTRY_ACL_TYPE_POSIX1E, align 4
  %67 = xor i32 %66, -1
  %68 = and i32 %65, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %64
  store %struct.archive_acl_entry* null, %struct.archive_acl_entry** %6, align 8
  br label %179

71:                                               ; preds = %64
  br label %81

72:                                               ; preds = %61
  %73 = load i32, i32* %8, align 4
  %74 = load i32, i32* @ARCHIVE_ENTRY_ACL_TYPE_NFS4, align 4
  %75 = xor i32 %74, -1
  %76 = and i32 %73, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %72
  store %struct.archive_acl_entry* null, %struct.archive_acl_entry** %6, align 8
  br label %179

79:                                               ; preds = %72
  br label %81

80:                                               ; preds = %61
  store %struct.archive_acl_entry* null, %struct.archive_acl_entry** %6, align 8
  br label %179

81:                                               ; preds = %79, %71, %63
  %82 = load %struct.archive_acl*, %struct.archive_acl** %7, align 8
  %83 = getelementptr inbounds %struct.archive_acl, %struct.archive_acl* %82, i32 0, i32 3
  %84 = load i32*, i32** %83, align 8
  %85 = call i32 @free(i32* %84)
  %86 = load %struct.archive_acl*, %struct.archive_acl** %7, align 8
  %87 = getelementptr inbounds %struct.archive_acl, %struct.archive_acl* %86, i32 0, i32 3
  store i32* null, i32** %87, align 8
  %88 = load %struct.archive_acl*, %struct.archive_acl** %7, align 8
  %89 = getelementptr inbounds %struct.archive_acl, %struct.archive_acl* %88, i32 0, i32 2
  %90 = load i32*, i32** %89, align 8
  %91 = call i32 @free(i32* %90)
  %92 = load %struct.archive_acl*, %struct.archive_acl** %7, align 8
  %93 = getelementptr inbounds %struct.archive_acl, %struct.archive_acl* %92, i32 0, i32 2
  store i32* null, i32** %93, align 8
  %94 = load %struct.archive_acl*, %struct.archive_acl** %7, align 8
  %95 = getelementptr inbounds %struct.archive_acl, %struct.archive_acl* %94, i32 0, i32 1
  %96 = load %struct.archive_acl_entry*, %struct.archive_acl_entry** %95, align 8
  store %struct.archive_acl_entry* %96, %struct.archive_acl_entry** %12, align 8
  store %struct.archive_acl_entry* null, %struct.archive_acl_entry** %13, align 8
  br label %97

97:                                               ; preds = %138, %81
  %98 = load %struct.archive_acl_entry*, %struct.archive_acl_entry** %12, align 8
  %99 = icmp ne %struct.archive_acl_entry* %98, null
  br i1 %99, label %100, label %143

100:                                              ; preds = %97
  %101 = load i32, i32* %8, align 4
  %102 = load i32, i32* @ARCHIVE_ENTRY_ACL_TYPE_NFS4, align 4
  %103 = and i32 %101, %102
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %105, label %138

105:                                              ; preds = %100
  %106 = load %struct.archive_acl_entry*, %struct.archive_acl_entry** %12, align 8
  %107 = getelementptr inbounds %struct.archive_acl_entry, %struct.archive_acl_entry* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = load i32, i32* %8, align 4
  %110 = icmp eq i32 %108, %109
  br i1 %110, label %111, label %138

111:                                              ; preds = %105
  %112 = load %struct.archive_acl_entry*, %struct.archive_acl_entry** %12, align 8
  %113 = getelementptr inbounds %struct.archive_acl_entry, %struct.archive_acl_entry* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  %115 = load i32, i32* %10, align 4
  %116 = icmp eq i32 %114, %115
  br i1 %116, label %117, label %138

117:                                              ; preds = %111
  %118 = load %struct.archive_acl_entry*, %struct.archive_acl_entry** %12, align 8
  %119 = getelementptr inbounds %struct.archive_acl_entry, %struct.archive_acl_entry* %118, i32 0, i32 2
  %120 = load i32, i32* %119, align 8
  %121 = load i32, i32* %11, align 4
  %122 = icmp eq i32 %120, %121
  br i1 %122, label %123, label %138

123:                                              ; preds = %117
  %124 = load i32, i32* %11, align 4
  %125 = icmp ne i32 %124, -1
  br i1 %125, label %132, label %126

126:                                              ; preds = %123
  %127 = load i32, i32* %10, align 4
  %128 = icmp ne i32 %127, 129
  br i1 %128, label %129, label %137

129:                                              ; preds = %126
  %130 = load i32, i32* %10, align 4
  %131 = icmp ne i32 %130, 133
  br i1 %131, label %132, label %137

132:                                              ; preds = %129, %123
  %133 = load i32, i32* %9, align 4
  %134 = load %struct.archive_acl_entry*, %struct.archive_acl_entry** %12, align 8
  %135 = getelementptr inbounds %struct.archive_acl_entry, %struct.archive_acl_entry* %134, i32 0, i32 3
  store i32 %133, i32* %135, align 4
  %136 = load %struct.archive_acl_entry*, %struct.archive_acl_entry** %12, align 8
  store %struct.archive_acl_entry* %136, %struct.archive_acl_entry** %6, align 8
  br label %179

137:                                              ; preds = %129, %126
  br label %138

138:                                              ; preds = %137, %117, %111, %105, %100
  %139 = load %struct.archive_acl_entry*, %struct.archive_acl_entry** %12, align 8
  store %struct.archive_acl_entry* %139, %struct.archive_acl_entry** %13, align 8
  %140 = load %struct.archive_acl_entry*, %struct.archive_acl_entry** %12, align 8
  %141 = getelementptr inbounds %struct.archive_acl_entry, %struct.archive_acl_entry* %140, i32 0, i32 4
  %142 = load %struct.archive_acl_entry*, %struct.archive_acl_entry** %141, align 8
  store %struct.archive_acl_entry* %142, %struct.archive_acl_entry** %12, align 8
  br label %97

143:                                              ; preds = %97
  %144 = call i64 @calloc(i32 1, i32 24)
  %145 = inttoptr i64 %144 to %struct.archive_acl_entry*
  store %struct.archive_acl_entry* %145, %struct.archive_acl_entry** %12, align 8
  %146 = load %struct.archive_acl_entry*, %struct.archive_acl_entry** %12, align 8
  %147 = icmp eq %struct.archive_acl_entry* %146, null
  br i1 %147, label %148, label %149

148:                                              ; preds = %143
  store %struct.archive_acl_entry* null, %struct.archive_acl_entry** %6, align 8
  br label %179

149:                                              ; preds = %143
  %150 = load %struct.archive_acl_entry*, %struct.archive_acl_entry** %13, align 8
  %151 = icmp eq %struct.archive_acl_entry* %150, null
  br i1 %151, label %152, label %156

152:                                              ; preds = %149
  %153 = load %struct.archive_acl_entry*, %struct.archive_acl_entry** %12, align 8
  %154 = load %struct.archive_acl*, %struct.archive_acl** %7, align 8
  %155 = getelementptr inbounds %struct.archive_acl, %struct.archive_acl* %154, i32 0, i32 1
  store %struct.archive_acl_entry* %153, %struct.archive_acl_entry** %155, align 8
  br label %160

156:                                              ; preds = %149
  %157 = load %struct.archive_acl_entry*, %struct.archive_acl_entry** %12, align 8
  %158 = load %struct.archive_acl_entry*, %struct.archive_acl_entry** %13, align 8
  %159 = getelementptr inbounds %struct.archive_acl_entry, %struct.archive_acl_entry* %158, i32 0, i32 4
  store %struct.archive_acl_entry* %157, %struct.archive_acl_entry** %159, align 8
  br label %160

160:                                              ; preds = %156, %152
  %161 = load i32, i32* %8, align 4
  %162 = load %struct.archive_acl_entry*, %struct.archive_acl_entry** %12, align 8
  %163 = getelementptr inbounds %struct.archive_acl_entry, %struct.archive_acl_entry* %162, i32 0, i32 0
  store i32 %161, i32* %163, align 8
  %164 = load i32, i32* %10, align 4
  %165 = load %struct.archive_acl_entry*, %struct.archive_acl_entry** %12, align 8
  %166 = getelementptr inbounds %struct.archive_acl_entry, %struct.archive_acl_entry* %165, i32 0, i32 1
  store i32 %164, i32* %166, align 4
  %167 = load i32, i32* %11, align 4
  %168 = load %struct.archive_acl_entry*, %struct.archive_acl_entry** %12, align 8
  %169 = getelementptr inbounds %struct.archive_acl_entry, %struct.archive_acl_entry* %168, i32 0, i32 2
  store i32 %167, i32* %169, align 8
  %170 = load i32, i32* %9, align 4
  %171 = load %struct.archive_acl_entry*, %struct.archive_acl_entry** %12, align 8
  %172 = getelementptr inbounds %struct.archive_acl_entry, %struct.archive_acl_entry* %171, i32 0, i32 3
  store i32 %170, i32* %172, align 4
  %173 = load i32, i32* %8, align 4
  %174 = load %struct.archive_acl*, %struct.archive_acl** %7, align 8
  %175 = getelementptr inbounds %struct.archive_acl, %struct.archive_acl* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 8
  %177 = or i32 %176, %173
  store i32 %177, i32* %175, align 8
  %178 = load %struct.archive_acl_entry*, %struct.archive_acl_entry** %12, align 8
  store %struct.archive_acl_entry* %178, %struct.archive_acl_entry** %6, align 8
  br label %179

179:                                              ; preds = %160, %148, %132, %80, %78, %70, %59, %57, %50, %35, %26
  %180 = load %struct.archive_acl_entry*, %struct.archive_acl_entry** %6, align 8
  ret %struct.archive_acl_entry* %180
}

declare dso_local i32 @free(i32*) #1

declare dso_local i64 @calloc(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
