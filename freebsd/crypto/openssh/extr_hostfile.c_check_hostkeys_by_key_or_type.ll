; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_hostfile.c_check_hostkeys_by_key_or_type.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_hostfile.c_check_hostkeys_by_key_or_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hostkeys = type { i64, %struct.hostkey_entry* }
%struct.hostkey_entry = type { i64, %struct.sshkey* }
%struct.sshkey = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@HOST_NEW = common dso_local global i32 0, align 4
@MRK_CA = common dso_local global i64 0, align 8
@MRK_NONE = common dso_local global i64 0, align 8
@HOST_FOUND = common dso_local global i32 0, align 4
@HOST_OK = common dso_local global i32 0, align 4
@HOST_CHANGED = common dso_local global i32 0, align 4
@HOST_REVOKED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hostkeys*, %struct.sshkey*, i32, %struct.hostkey_entry**)* @check_hostkeys_by_key_or_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_hostkeys_by_key_or_type(%struct.hostkeys* %0, %struct.sshkey* %1, i32 %2, %struct.hostkey_entry** %3) #0 {
  %5 = alloca %struct.hostkeys*, align 8
  %6 = alloca %struct.sshkey*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.hostkey_entry**, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  store %struct.hostkeys* %0, %struct.hostkeys** %5, align 8
  store %struct.sshkey* %1, %struct.sshkey** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.hostkey_entry** %3, %struct.hostkey_entry*** %8, align 8
  %13 = load i32, i32* @HOST_NEW, align 4
  store i32 %13, i32* %10, align 4
  %14 = load %struct.sshkey*, %struct.sshkey** %6, align 8
  %15 = call i32 @sshkey_is_cert(%struct.sshkey* %14)
  store i32 %15, i32* %11, align 4
  %16 = load i32, i32* %11, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %4
  %19 = load i64, i64* @MRK_CA, align 8
  br label %22

20:                                               ; preds = %4
  %21 = load i64, i64* @MRK_NONE, align 8
  br label %22

22:                                               ; preds = %20, %18
  %23 = phi i64 [ %19, %18 ], [ %21, %20 ]
  store i64 %23, i64* %12, align 8
  %24 = load %struct.hostkey_entry**, %struct.hostkey_entry*** %8, align 8
  %25 = icmp ne %struct.hostkey_entry** %24, null
  br i1 %25, label %26, label %28

26:                                               ; preds = %22
  %27 = load %struct.hostkey_entry**, %struct.hostkey_entry*** %8, align 8
  store %struct.hostkey_entry* null, %struct.hostkey_entry** %27, align 8
  br label %28

28:                                               ; preds = %26, %22
  store i64 0, i64* %9, align 8
  br label %29

29:                                               ; preds = %148, %28
  %30 = load i64, i64* %9, align 8
  %31 = load %struct.hostkeys*, %struct.hostkeys** %5, align 8
  %32 = getelementptr inbounds %struct.hostkeys, %struct.hostkeys* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp ult i64 %30, %33
  br i1 %34, label %35, label %151

35:                                               ; preds = %29
  %36 = load %struct.hostkeys*, %struct.hostkeys** %5, align 8
  %37 = getelementptr inbounds %struct.hostkeys, %struct.hostkeys* %36, i32 0, i32 1
  %38 = load %struct.hostkey_entry*, %struct.hostkey_entry** %37, align 8
  %39 = load i64, i64* %9, align 8
  %40 = getelementptr inbounds %struct.hostkey_entry, %struct.hostkey_entry* %38, i64 %39
  %41 = getelementptr inbounds %struct.hostkey_entry, %struct.hostkey_entry* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* %12, align 8
  %44 = icmp ne i64 %42, %43
  br i1 %44, label %45, label %46

45:                                               ; preds = %35
  br label %148

46:                                               ; preds = %35
  %47 = load %struct.sshkey*, %struct.sshkey** %6, align 8
  %48 = icmp eq %struct.sshkey* %47, null
  br i1 %48, label %49, label %81

49:                                               ; preds = %46
  %50 = load %struct.hostkeys*, %struct.hostkeys** %5, align 8
  %51 = getelementptr inbounds %struct.hostkeys, %struct.hostkeys* %50, i32 0, i32 1
  %52 = load %struct.hostkey_entry*, %struct.hostkey_entry** %51, align 8
  %53 = load i64, i64* %9, align 8
  %54 = getelementptr inbounds %struct.hostkey_entry, %struct.hostkey_entry* %52, i64 %53
  %55 = getelementptr inbounds %struct.hostkey_entry, %struct.hostkey_entry* %54, i32 0, i32 1
  %56 = load %struct.sshkey*, %struct.sshkey** %55, align 8
  %57 = getelementptr inbounds %struct.sshkey, %struct.sshkey* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* %7, align 4
  %60 = icmp ne i32 %58, %59
  br i1 %60, label %61, label %62

61:                                               ; preds = %49
  br label %148

62:                                               ; preds = %49
  %63 = load i32, i32* @HOST_FOUND, align 4
  store i32 %63, i32* %10, align 4
  %64 = load %struct.hostkey_entry**, %struct.hostkey_entry*** %8, align 8
  %65 = icmp ne %struct.hostkey_entry** %64, null
  br i1 %65, label %66, label %73

66:                                               ; preds = %62
  %67 = load %struct.hostkeys*, %struct.hostkeys** %5, align 8
  %68 = getelementptr inbounds %struct.hostkeys, %struct.hostkeys* %67, i32 0, i32 1
  %69 = load %struct.hostkey_entry*, %struct.hostkey_entry** %68, align 8
  %70 = load i64, i64* %9, align 8
  %71 = getelementptr inbounds %struct.hostkey_entry, %struct.hostkey_entry* %69, i64 %70
  %72 = load %struct.hostkey_entry**, %struct.hostkey_entry*** %8, align 8
  store %struct.hostkey_entry* %71, %struct.hostkey_entry** %72, align 8
  br label %73

73:                                               ; preds = %66, %62
  %74 = load %struct.hostkeys*, %struct.hostkeys** %5, align 8
  %75 = getelementptr inbounds %struct.hostkeys, %struct.hostkeys* %74, i32 0, i32 1
  %76 = load %struct.hostkey_entry*, %struct.hostkey_entry** %75, align 8
  %77 = load i64, i64* %9, align 8
  %78 = getelementptr inbounds %struct.hostkey_entry, %struct.hostkey_entry* %76, i64 %77
  %79 = getelementptr inbounds %struct.hostkey_entry, %struct.hostkey_entry* %78, i32 0, i32 1
  %80 = load %struct.sshkey*, %struct.sshkey** %79, align 8
  store %struct.sshkey* %80, %struct.sshkey** %6, align 8
  br label %151

81:                                               ; preds = %46
  %82 = load i32, i32* %11, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %112

84:                                               ; preds = %81
  %85 = load %struct.sshkey*, %struct.sshkey** %6, align 8
  %86 = getelementptr inbounds %struct.sshkey, %struct.sshkey* %85, i32 0, i32 1
  %87 = load %struct.TYPE_2__*, %struct.TYPE_2__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.hostkeys*, %struct.hostkeys** %5, align 8
  %91 = getelementptr inbounds %struct.hostkeys, %struct.hostkeys* %90, i32 0, i32 1
  %92 = load %struct.hostkey_entry*, %struct.hostkey_entry** %91, align 8
  %93 = load i64, i64* %9, align 8
  %94 = getelementptr inbounds %struct.hostkey_entry, %struct.hostkey_entry* %92, i64 %93
  %95 = getelementptr inbounds %struct.hostkey_entry, %struct.hostkey_entry* %94, i32 0, i32 1
  %96 = load %struct.sshkey*, %struct.sshkey** %95, align 8
  %97 = call i64 @sshkey_equal_public(i32 %89, %struct.sshkey* %96)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %111

99:                                               ; preds = %84
  %100 = load i32, i32* @HOST_OK, align 4
  store i32 %100, i32* %10, align 4
  %101 = load %struct.hostkey_entry**, %struct.hostkey_entry*** %8, align 8
  %102 = icmp ne %struct.hostkey_entry** %101, null
  br i1 %102, label %103, label %110

103:                                              ; preds = %99
  %104 = load %struct.hostkeys*, %struct.hostkeys** %5, align 8
  %105 = getelementptr inbounds %struct.hostkeys, %struct.hostkeys* %104, i32 0, i32 1
  %106 = load %struct.hostkey_entry*, %struct.hostkey_entry** %105, align 8
  %107 = load i64, i64* %9, align 8
  %108 = getelementptr inbounds %struct.hostkey_entry, %struct.hostkey_entry* %106, i64 %107
  %109 = load %struct.hostkey_entry**, %struct.hostkey_entry*** %8, align 8
  store %struct.hostkey_entry* %108, %struct.hostkey_entry** %109, align 8
  br label %110

110:                                              ; preds = %103, %99
  br label %151

111:                                              ; preds = %84
  br label %147

112:                                              ; preds = %81
  %113 = load %struct.sshkey*, %struct.sshkey** %6, align 8
  %114 = load %struct.hostkeys*, %struct.hostkeys** %5, align 8
  %115 = getelementptr inbounds %struct.hostkeys, %struct.hostkeys* %114, i32 0, i32 1
  %116 = load %struct.hostkey_entry*, %struct.hostkey_entry** %115, align 8
  %117 = load i64, i64* %9, align 8
  %118 = getelementptr inbounds %struct.hostkey_entry, %struct.hostkey_entry* %116, i64 %117
  %119 = getelementptr inbounds %struct.hostkey_entry, %struct.hostkey_entry* %118, i32 0, i32 1
  %120 = load %struct.sshkey*, %struct.sshkey** %119, align 8
  %121 = call i64 @sshkey_equal(%struct.sshkey* %113, %struct.sshkey* %120)
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %135

123:                                              ; preds = %112
  %124 = load i32, i32* @HOST_OK, align 4
  store i32 %124, i32* %10, align 4
  %125 = load %struct.hostkey_entry**, %struct.hostkey_entry*** %8, align 8
  %126 = icmp ne %struct.hostkey_entry** %125, null
  br i1 %126, label %127, label %134

127:                                              ; preds = %123
  %128 = load %struct.hostkeys*, %struct.hostkeys** %5, align 8
  %129 = getelementptr inbounds %struct.hostkeys, %struct.hostkeys* %128, i32 0, i32 1
  %130 = load %struct.hostkey_entry*, %struct.hostkey_entry** %129, align 8
  %131 = load i64, i64* %9, align 8
  %132 = getelementptr inbounds %struct.hostkey_entry, %struct.hostkey_entry* %130, i64 %131
  %133 = load %struct.hostkey_entry**, %struct.hostkey_entry*** %8, align 8
  store %struct.hostkey_entry* %132, %struct.hostkey_entry** %133, align 8
  br label %134

134:                                              ; preds = %127, %123
  br label %151

135:                                              ; preds = %112
  %136 = load i32, i32* @HOST_CHANGED, align 4
  store i32 %136, i32* %10, align 4
  %137 = load %struct.hostkey_entry**, %struct.hostkey_entry*** %8, align 8
  %138 = icmp ne %struct.hostkey_entry** %137, null
  br i1 %138, label %139, label %146

139:                                              ; preds = %135
  %140 = load %struct.hostkeys*, %struct.hostkeys** %5, align 8
  %141 = getelementptr inbounds %struct.hostkeys, %struct.hostkeys* %140, i32 0, i32 1
  %142 = load %struct.hostkey_entry*, %struct.hostkey_entry** %141, align 8
  %143 = load i64, i64* %9, align 8
  %144 = getelementptr inbounds %struct.hostkey_entry, %struct.hostkey_entry* %142, i64 %143
  %145 = load %struct.hostkey_entry**, %struct.hostkey_entry*** %8, align 8
  store %struct.hostkey_entry* %144, %struct.hostkey_entry** %145, align 8
  br label %146

146:                                              ; preds = %139, %135
  br label %147

147:                                              ; preds = %146, %111
  br label %148

148:                                              ; preds = %147, %61, %45
  %149 = load i64, i64* %9, align 8
  %150 = add i64 %149, 1
  store i64 %150, i64* %9, align 8
  br label %29

151:                                              ; preds = %134, %110, %73, %29
  %152 = load %struct.hostkeys*, %struct.hostkeys** %5, align 8
  %153 = load %struct.sshkey*, %struct.sshkey** %6, align 8
  %154 = call i64 @check_key_not_revoked(%struct.hostkeys* %152, %struct.sshkey* %153)
  %155 = icmp ne i64 %154, 0
  br i1 %155, label %156, label %163

156:                                              ; preds = %151
  %157 = load i32, i32* @HOST_REVOKED, align 4
  store i32 %157, i32* %10, align 4
  %158 = load %struct.hostkey_entry**, %struct.hostkey_entry*** %8, align 8
  %159 = icmp ne %struct.hostkey_entry** %158, null
  br i1 %159, label %160, label %162

160:                                              ; preds = %156
  %161 = load %struct.hostkey_entry**, %struct.hostkey_entry*** %8, align 8
  store %struct.hostkey_entry* null, %struct.hostkey_entry** %161, align 8
  br label %162

162:                                              ; preds = %160, %156
  br label %163

163:                                              ; preds = %162, %151
  %164 = load i32, i32* %10, align 4
  ret i32 %164
}

declare dso_local i32 @sshkey_is_cert(%struct.sshkey*) #1

declare dso_local i64 @sshkey_equal_public(i32, %struct.sshkey*) #1

declare dso_local i64 @sshkey_equal(%struct.sshkey*, %struct.sshkey*) #1

declare dso_local i64 @check_key_not_revoked(%struct.hostkeys*, %struct.sshkey*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
