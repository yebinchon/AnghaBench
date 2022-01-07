; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/kcm/extr_acl.c_kcm_access.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/kcm/extr_acl.c_kcm_access.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, i64, i32 }
%struct.TYPE_9__ = type { i32, i64, i64, i32, i32, i32 }

@KRB5_FCC_PERM = common dso_local global i64 0, align 8
@KCM_FLAGS_OWNER_IS_SYSTEM = common dso_local global i32 0, align 4
@S_IROTH = common dso_local global i32 0, align 4
@S_IWOTH = common dso_local global i32 0, align 4
@S_IRUSR = common dso_local global i32 0, align 4
@S_IRGRP = common dso_local global i32 0, align 4
@S_IWUSR = common dso_local global i32 0, align 4
@S_IWGRP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [51 x i8] c"Process %d is not permitted to call %s on cache %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @kcm_access(i32 %0, %struct.TYPE_8__* %1, i32 %2, %struct.TYPE_9__* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_9__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  store i32 %0, i32* %5, align 4
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.TYPE_9__* %3, %struct.TYPE_9__** %8, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %13 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %14 = call i32 @KCM_ASSERT_VALID(%struct.TYPE_9__* %13)
  %15 = load i32, i32* %7, align 4
  switch i32 %15, label %18 [
    i32 137, label %16
    i32 149, label %16
    i32 128, label %16
    i32 134, label %16
    i32 130, label %16
    i32 150, label %16
    i32 151, label %16
    i32 142, label %16
    i32 138, label %16
    i32 136, label %16
    i32 131, label %16
    i32 129, label %16
    i32 135, label %17
    i32 140, label %17
    i32 133, label %17
    i32 148, label %17
    i32 132, label %17
    i32 139, label %17
    i32 144, label %17
    i32 145, label %17
    i32 146, label %17
    i32 147, label %17
    i32 143, label %17
    i32 141, label %17
  ]

16:                                               ; preds = %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4
  store i32 1, i32* %10, align 4
  store i32 0, i32* %9, align 4
  br label %20

17:                                               ; preds = %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4
  store i32 0, i32* %10, align 4
  store i32 1, i32* %9, align 4
  br label %20

18:                                               ; preds = %4
  %19 = load i64, i64* @KRB5_FCC_PERM, align 8
  store i64 %19, i64* %12, align 8
  br label %160

20:                                               ; preds = %17, %16
  %21 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %22 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @KCM_FLAGS_OWNER_IS_SYSTEM, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %47

27:                                               ; preds = %20
  %28 = load i32, i32* %7, align 4
  %29 = icmp eq i32 %28, 137
  br i1 %29, label %39, label %30

30:                                               ; preds = %27
  %31 = load i32, i32* %7, align 4
  %32 = icmp eq i32 %31, 149
  br i1 %32, label %39, label %33

33:                                               ; preds = %30
  %34 = load i32, i32* %7, align 4
  %35 = icmp eq i32 %34, 134
  br i1 %35, label %39, label %36

36:                                               ; preds = %33
  %37 = load i32, i32* %7, align 4
  %38 = icmp eq i32 %37, 136
  br i1 %38, label %39, label %41

39:                                               ; preds = %36, %33, %30, %27
  %40 = load i64, i64* @KRB5_FCC_PERM, align 8
  store i64 %40, i64* %12, align 8
  br label %160

41:                                               ; preds = %36
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %43 = call i64 @CLIENT_IS_ROOT(%struct.TYPE_8__* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %41
  store i64 0, i64* %12, align 8
  br label %160

46:                                               ; preds = %41
  br label %47

47:                                               ; preds = %46, %20
  %48 = load i32, i32* @S_IROTH, align 4
  %49 = load i32, i32* @S_IWOTH, align 4
  %50 = or i32 %48, %49
  store i32 %50, i32* %11, align 4
  %51 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %52 = call i64 @CLIENT_IS_ROOT(%struct.TYPE_8__* %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %77

54:                                               ; preds = %47
  %55 = load i32, i32* %9, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %65

57:                                               ; preds = %54
  %58 = load i32, i32* @S_IRUSR, align 4
  %59 = load i32, i32* @S_IRGRP, align 4
  %60 = or i32 %58, %59
  %61 = load i32, i32* @S_IROTH, align 4
  %62 = or i32 %60, %61
  %63 = load i32, i32* %11, align 4
  %64 = or i32 %63, %62
  store i32 %64, i32* %11, align 4
  br label %65

65:                                               ; preds = %57, %54
  %66 = load i32, i32* %10, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %76

68:                                               ; preds = %65
  %69 = load i32, i32* @S_IWUSR, align 4
  %70 = load i32, i32* @S_IWGRP, align 4
  %71 = or i32 %69, %70
  %72 = load i32, i32* @S_IWOTH, align 4
  %73 = or i32 %71, %72
  %74 = load i32, i32* %11, align 4
  %75 = or i32 %74, %73
  store i32 %75, i32* %11, align 4
  br label %76

76:                                               ; preds = %68, %65
  br label %77

77:                                               ; preds = %76, %47
  %78 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %79 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %80 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %79, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %83 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %82, i32 0, i32 5
  %84 = load i32, i32* %83, align 8
  %85 = call i64 @kcm_is_same_session(%struct.TYPE_8__* %78, i64 %81, i32 %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %102

87:                                               ; preds = %77
  %88 = load i32, i32* %9, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %94

90:                                               ; preds = %87
  %91 = load i32, i32* @S_IROTH, align 4
  %92 = load i32, i32* %11, align 4
  %93 = or i32 %92, %91
  store i32 %93, i32* %11, align 4
  br label %94

94:                                               ; preds = %90, %87
  %95 = load i32, i32* %10, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %101

97:                                               ; preds = %94
  %98 = load i32, i32* @S_IWOTH, align 4
  %99 = load i32, i32* %11, align 4
  %100 = or i32 %99, %98
  store i32 %100, i32* %11, align 4
  br label %101

101:                                              ; preds = %97, %94
  br label %102

102:                                              ; preds = %101, %77
  %103 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %104 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %107 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %106, i32 0, i32 1
  %108 = load i64, i64* %107, align 8
  %109 = icmp eq i64 %105, %108
  br i1 %109, label %110, label %125

110:                                              ; preds = %102
  %111 = load i32, i32* %9, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %117

113:                                              ; preds = %110
  %114 = load i32, i32* @S_IRUSR, align 4
  %115 = load i32, i32* %11, align 4
  %116 = or i32 %115, %114
  store i32 %116, i32* %11, align 4
  br label %117

117:                                              ; preds = %113, %110
  %118 = load i32, i32* %10, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %124

120:                                              ; preds = %117
  %121 = load i32, i32* @S_IWUSR, align 4
  %122 = load i32, i32* %11, align 4
  %123 = or i32 %122, %121
  store i32 %123, i32* %11, align 4
  br label %124

124:                                              ; preds = %120, %117
  br label %125

125:                                              ; preds = %124, %102
  %126 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %127 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %126, i32 0, i32 1
  %128 = load i64, i64* %127, align 8
  %129 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %130 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %129, i32 0, i32 2
  %131 = load i64, i64* %130, align 8
  %132 = icmp eq i64 %128, %131
  br i1 %132, label %133, label %148

133:                                              ; preds = %125
  %134 = load i32, i32* %9, align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %140

136:                                              ; preds = %133
  %137 = load i32, i32* @S_IRGRP, align 4
  %138 = load i32, i32* %11, align 4
  %139 = or i32 %138, %137
  store i32 %139, i32* %11, align 4
  br label %140

140:                                              ; preds = %136, %133
  %141 = load i32, i32* %10, align 4
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %147

143:                                              ; preds = %140
  %144 = load i32, i32* @S_IWGRP, align 4
  %145 = load i32, i32* %11, align 4
  %146 = or i32 %145, %144
  store i32 %146, i32* %11, align 4
  br label %147

147:                                              ; preds = %143, %140
  br label %148

148:                                              ; preds = %147, %125
  %149 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %150 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %149, i32 0, i32 3
  %151 = load i32, i32* %150, align 8
  %152 = load i32, i32* %11, align 4
  %153 = and i32 %151, %152
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %156

155:                                              ; preds = %148
  br label %158

156:                                              ; preds = %148
  %157 = load i64, i64* @KRB5_FCC_PERM, align 8
  br label %158

158:                                              ; preds = %156, %155
  %159 = phi i64 [ 0, %155 ], [ %157, %156 ]
  store i64 %159, i64* %12, align 8
  br label %160

160:                                              ; preds = %158, %45, %39, %18
  %161 = load i64, i64* %12, align 8
  %162 = icmp ne i64 %161, 0
  br i1 %162, label %163, label %173

163:                                              ; preds = %160
  %164 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %165 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %164, i32 0, i32 2
  %166 = load i32, i32* %165, align 8
  %167 = load i32, i32* %7, align 4
  %168 = call i32 @kcm_op2string(i32 %167)
  %169 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %170 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %169, i32 0, i32 4
  %171 = load i32, i32* %170, align 4
  %172 = call i32 @kcm_log(i32 2, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i32 %166, i32 %168, i32 %171)
  br label %173

173:                                              ; preds = %163, %160
  %174 = load i64, i64* %12, align 8
  ret i64 %174
}

declare dso_local i32 @KCM_ASSERT_VALID(%struct.TYPE_9__*) #1

declare dso_local i64 @CLIENT_IS_ROOT(%struct.TYPE_8__*) #1

declare dso_local i64 @kcm_is_same_session(%struct.TYPE_8__*, i64, i32) #1

declare dso_local i32 @kcm_log(i32, i8*, i32, i32, i32) #1

declare dso_local i32 @kcm_op2string(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
