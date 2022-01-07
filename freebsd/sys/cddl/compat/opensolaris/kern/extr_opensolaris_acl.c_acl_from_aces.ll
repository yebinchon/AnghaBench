; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/compat/opensolaris/kern/extr_opensolaris_acl.c_acl_from_aces.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/compat/opensolaris/kern/extr_opensolaris_acl.c_acl_from_aces.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acl = type { i32, i32, %struct.acl_entry* }
%struct.acl_entry = type { i64, i32, i8*, i8*, i32 }
%struct.TYPE_3__ = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [49 x i8] c"acl_from_aces: empty ZFS ACL; returning EINVAL.\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@ACL_MAX_ENTRIES = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [76 x i8] c"acl_from_aces: ZFS ACL too big to fit into 'struct acl'; returning EINVAL.\0A\00", align 1
@ACE_OWNER = common dso_local global i32 0, align 4
@ACL_USER_OBJ = common dso_local global i64 0, align 8
@ACE_GROUP = common dso_local global i32 0, align 4
@ACL_GROUP_OBJ = common dso_local global i64 0, align 8
@ACE_EVERYONE = common dso_local global i32 0, align 4
@ACL_EVERYONE = common dso_local global i64 0, align 8
@ACE_IDENTIFIER_GROUP = common dso_local global i32 0, align 4
@ACL_GROUP = common dso_local global i64 0, align 8
@ACL_USER = common dso_local global i64 0, align 8
@ACL_UNDEFINED_ID = common dso_local global i32 0, align 4
@perms = common dso_local global i32 0, align 4
@flags = common dso_local global i32 0, align 4
@ACL_ENTRY_TYPE_ALLOW = common dso_local global i32 0, align 4
@ACL_ENTRY_TYPE_DENY = common dso_local global i32 0, align 4
@ACL_ENTRY_TYPE_AUDIT = common dso_local global i32 0, align 4
@ACL_ENTRY_TYPE_ALARM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [30 x i8] c"acl_from_aces: a_type is 0x%x\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @acl_from_aces(%struct.acl* %0, %struct.TYPE_3__* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.acl*, align 8
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.acl_entry*, align 8
  %10 = alloca %struct.TYPE_3__*, align 8
  store %struct.acl* %0, %struct.acl** %5, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load i32, i32* %7, align 4
  %12 = icmp slt i32 %11, 1
  br i1 %12, label %13, label %16

13:                                               ; preds = %3
  %14 = call i32 @printf(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0))
  %15 = load i32, i32* @EINVAL, align 4
  store i32 %15, i32* %4, align 4
  br label %163

16:                                               ; preds = %3
  %17 = load i32, i32* %7, align 4
  %18 = load i32, i32* @ACL_MAX_ENTRIES, align 4
  %19 = icmp sgt i32 %17, %18
  br i1 %19, label %20, label %23

20:                                               ; preds = %16
  %21 = call i32 @printf(i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.1, i64 0, i64 0))
  %22 = load i32, i32* @EINVAL, align 4
  store i32 %22, i32* %4, align 4
  br label %163

23:                                               ; preds = %16
  %24 = load %struct.acl*, %struct.acl** %5, align 8
  %25 = call i32 @bzero(%struct.acl* %24, i32 16)
  %26 = load i32, i32* @ACL_MAX_ENTRIES, align 4
  %27 = load %struct.acl*, %struct.acl** %5, align 8
  %28 = getelementptr inbounds %struct.acl, %struct.acl* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 8
  %29 = load i32, i32* %7, align 4
  %30 = load %struct.acl*, %struct.acl** %5, align 8
  %31 = getelementptr inbounds %struct.acl, %struct.acl* %30, i32 0, i32 1
  store i32 %29, i32* %31, align 4
  store i32 0, i32* %8, align 4
  br label %32

32:                                               ; preds = %159, %23
  %33 = load i32, i32* %8, align 4
  %34 = load i32, i32* %7, align 4
  %35 = icmp slt i32 %33, %34
  br i1 %35, label %36, label %162

36:                                               ; preds = %32
  %37 = load %struct.acl*, %struct.acl** %5, align 8
  %38 = getelementptr inbounds %struct.acl, %struct.acl* %37, i32 0, i32 2
  %39 = load %struct.acl_entry*, %struct.acl_entry** %38, align 8
  %40 = load i32, i32* %8, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.acl_entry, %struct.acl_entry* %39, i64 %41
  store %struct.acl_entry* %42, %struct.acl_entry** %9, align 8
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %44 = load i32, i32* %8, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i64 %45
  store %struct.TYPE_3__* %46, %struct.TYPE_3__** %10, align 8
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @ACE_OWNER, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %36
  %54 = load i64, i64* @ACL_USER_OBJ, align 8
  %55 = load %struct.acl_entry*, %struct.acl_entry** %9, align 8
  %56 = getelementptr inbounds %struct.acl_entry, %struct.acl_entry* %55, i32 0, i32 0
  store i64 %54, i64* %56, align 8
  br label %97

57:                                               ; preds = %36
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @ACE_GROUP, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %68

64:                                               ; preds = %57
  %65 = load i64, i64* @ACL_GROUP_OBJ, align 8
  %66 = load %struct.acl_entry*, %struct.acl_entry** %9, align 8
  %67 = getelementptr inbounds %struct.acl_entry, %struct.acl_entry* %66, i32 0, i32 0
  store i64 %65, i64* %67, align 8
  br label %96

68:                                               ; preds = %57
  %69 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* @ACE_EVERYONE, align 4
  %73 = and i32 %71, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %79

75:                                               ; preds = %68
  %76 = load i64, i64* @ACL_EVERYONE, align 8
  %77 = load %struct.acl_entry*, %struct.acl_entry** %9, align 8
  %78 = getelementptr inbounds %struct.acl_entry, %struct.acl_entry* %77, i32 0, i32 0
  store i64 %76, i64* %78, align 8
  br label %95

79:                                               ; preds = %68
  %80 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* @ACE_IDENTIFIER_GROUP, align 4
  %84 = and i32 %82, %83
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %90

86:                                               ; preds = %79
  %87 = load i64, i64* @ACL_GROUP, align 8
  %88 = load %struct.acl_entry*, %struct.acl_entry** %9, align 8
  %89 = getelementptr inbounds %struct.acl_entry, %struct.acl_entry* %88, i32 0, i32 0
  store i64 %87, i64* %89, align 8
  br label %94

90:                                               ; preds = %79
  %91 = load i64, i64* @ACL_USER, align 8
  %92 = load %struct.acl_entry*, %struct.acl_entry** %9, align 8
  %93 = getelementptr inbounds %struct.acl_entry, %struct.acl_entry* %92, i32 0, i32 0
  store i64 %91, i64* %93, align 8
  br label %94

94:                                               ; preds = %90, %86
  br label %95

95:                                               ; preds = %94, %75
  br label %96

96:                                               ; preds = %95, %64
  br label %97

97:                                               ; preds = %96, %53
  %98 = load %struct.acl_entry*, %struct.acl_entry** %9, align 8
  %99 = getelementptr inbounds %struct.acl_entry, %struct.acl_entry* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = load i64, i64* @ACL_USER, align 8
  %102 = icmp eq i64 %100, %101
  br i1 %102, label %109, label %103

103:                                              ; preds = %97
  %104 = load %struct.acl_entry*, %struct.acl_entry** %9, align 8
  %105 = getelementptr inbounds %struct.acl_entry, %struct.acl_entry* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = load i64, i64* @ACL_GROUP, align 8
  %108 = icmp eq i64 %106, %107
  br i1 %108, label %109, label %115

109:                                              ; preds = %103, %97
  %110 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %111 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %110, i32 0, i32 3
  %112 = load i32, i32* %111, align 4
  %113 = load %struct.acl_entry*, %struct.acl_entry** %9, align 8
  %114 = getelementptr inbounds %struct.acl_entry, %struct.acl_entry* %113, i32 0, i32 4
  store i32 %112, i32* %114, align 8
  br label %119

115:                                              ; preds = %103
  %116 = load i32, i32* @ACL_UNDEFINED_ID, align 4
  %117 = load %struct.acl_entry*, %struct.acl_entry** %9, align 8
  %118 = getelementptr inbounds %struct.acl_entry, %struct.acl_entry* %117, i32 0, i32 4
  store i32 %116, i32* %118, align 8
  br label %119

119:                                              ; preds = %115, %109
  %120 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %121 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 4
  %123 = load i32, i32* @perms, align 4
  %124 = call i8* @_bsd_from_zfs(i32 %122, i32 %123)
  %125 = load %struct.acl_entry*, %struct.acl_entry** %9, align 8
  %126 = getelementptr inbounds %struct.acl_entry, %struct.acl_entry* %125, i32 0, i32 3
  store i8* %124, i8** %126, align 8
  %127 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %128 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = load i32, i32* @flags, align 4
  %131 = call i8* @_bsd_from_zfs(i32 %129, i32 %130)
  %132 = load %struct.acl_entry*, %struct.acl_entry** %9, align 8
  %133 = getelementptr inbounds %struct.acl_entry, %struct.acl_entry* %132, i32 0, i32 2
  store i8* %131, i8** %133, align 8
  %134 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %135 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %134, i32 0, i32 2
  %136 = load i32, i32* %135, align 4
  switch i32 %136, label %153 [
    i32 131, label %137
    i32 130, label %141
    i32 128, label %145
    i32 129, label %149
  ]

137:                                              ; preds = %119
  %138 = load i32, i32* @ACL_ENTRY_TYPE_ALLOW, align 4
  %139 = load %struct.acl_entry*, %struct.acl_entry** %9, align 8
  %140 = getelementptr inbounds %struct.acl_entry, %struct.acl_entry* %139, i32 0, i32 1
  store i32 %138, i32* %140, align 8
  br label %158

141:                                              ; preds = %119
  %142 = load i32, i32* @ACL_ENTRY_TYPE_DENY, align 4
  %143 = load %struct.acl_entry*, %struct.acl_entry** %9, align 8
  %144 = getelementptr inbounds %struct.acl_entry, %struct.acl_entry* %143, i32 0, i32 1
  store i32 %142, i32* %144, align 8
  br label %158

145:                                              ; preds = %119
  %146 = load i32, i32* @ACL_ENTRY_TYPE_AUDIT, align 4
  %147 = load %struct.acl_entry*, %struct.acl_entry** %9, align 8
  %148 = getelementptr inbounds %struct.acl_entry, %struct.acl_entry* %147, i32 0, i32 1
  store i32 %146, i32* %148, align 8
  br label %158

149:                                              ; preds = %119
  %150 = load i32, i32* @ACL_ENTRY_TYPE_ALARM, align 4
  %151 = load %struct.acl_entry*, %struct.acl_entry** %9, align 8
  %152 = getelementptr inbounds %struct.acl_entry, %struct.acl_entry* %151, i32 0, i32 1
  store i32 %150, i32* %152, align 8
  br label %158

153:                                              ; preds = %119
  %154 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %155 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %154, i32 0, i32 2
  %156 = load i32, i32* %155, align 4
  %157 = call i32 @panic(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i32 %156)
  br label %158

158:                                              ; preds = %153, %149, %145, %141, %137
  br label %159

159:                                              ; preds = %158
  %160 = load i32, i32* %8, align 4
  %161 = add nsw i32 %160, 1
  store i32 %161, i32* %8, align 4
  br label %32

162:                                              ; preds = %32
  store i32 0, i32* %4, align 4
  br label %163

163:                                              ; preds = %162, %20, %13
  %164 = load i32, i32* %4, align 4
  ret i32 %164
}

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @bzero(%struct.acl*, i32) #1

declare dso_local i8* @_bsd_from_zfs(i32, i32) #1

declare dso_local i32 @panic(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
